.PHONY: clean

clean:
	rm -rf source_data
	rm -rf figures
	rm -rf derived_data
	rm -rf .created-dirs
	rm -f Report.pdf

.created-dirs:
	mkdir -p source_data
	mkdir -p figures
	mkdir -p derived_data
	touch .created-dirs



derived_data/USrates.csv derived_data/USabortionrates.csv: .created-dirs source_data/NationalAndStatePregnancy_PublicUse.csv
	Rscript derived_data/USRates.R

derived_data/USRates_Long.csv: derived_data/USrates.R
	Rscript derived_data/USRates_Long.R
	
figures/Figure1.rds figures/Figure2.rds figures/Figure3.rds:USrates.R derived_data/USRates_Long.R

report.pdf: figures/Figure1.rds figures/Figure2.rds figures/Figure3.rds\
	R -e "rmarkdown::render(\"Final_Report.Rmd\", output_format=\"pdf_document\")"