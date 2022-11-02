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


derived_data/USrates.csv derived_data/USabortionrates.csv derived_data/USpregnancyrates.csv derived_data/USbirthrates.csv: .created-dirs\
source_data/NationalAndStatePregnancy_PublicUse.csv
	Rscript source_data/USRates.R
	
USRates_Long.R: .created-dirs\
source_data/USRates.R
	Rscript source_data/USRates_Long.R

figures/Figure1.rds figures/Figure2.rds figures/Figure3.rds: .created-dirs\
source_data/USRates_Long.R
	Rscript source_data/Figs_US_Rates.R

report.pdf: figures/Figure1.rds figures/Figure2.rds figures/Figure3.rds
	R -e "rmarkdown::render(\"Project_Overview.md\", output_format=\"pdf_document\")"