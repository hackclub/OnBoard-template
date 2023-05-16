# KiBot CI/CD Automation
Hey there! Did you know this repo automatically ERC, DRC and generates Gerbers from your design in `src`?

## How It Works
KiBot will go through `src` and comb for any files following the default naming scheme `main.sch`, `main.kicad_pcb`, and `main.pro`. After doing so, it then runs INTI-CMNB's KiCAD Automation Scripts, which mimics KiCAD's own ERC/DRC processes. It will then summarize its results in Github Actions' Artifacts (`DRC`, `ERC`).

After running ERC and DRC, `OnBoard-template` also outputs a `FabPCB` folder, which contains automatically generated Gerbers for JLCPCB [^2]. 

Here is a quick rundown on its outputs:
```bash
├── ERC/                # Electrical Rule Check
│   └── main-erc            # Summarizes ERC errors. Does not include warnings
├── DRC/                # Design Rule Check
│   └── main-drc            # Summarizes DRC errors. Does not include warnings
├── FabSCH/             # Schematic and BOM output
│   └── Fabrication/        
│       └── main-schematic  # PDF of schematic
│       └── BOM/            # BOMs (csv, html, xslx)
│           └── main-bom.csv
│           └── main-bom.html
│           └── main-bom.xslx
│   └── kibot_error         # Summarizes warnings in FabSCH generation
├── FabPCB/             # Fabrication output

```


[^2]: `OnBoard-template` also supports generation of Gerbers for `PCBWAY`, `Fusion PCB`, `P-Ban`, and `Elecrow`, however for consistency sake they are not officially endorsed for the program. If you are interested in using a fab other than `JLCPCB`, contact an Onboard orgainzer.

## Customization
As is, KiBot checks any design that sits in `src` called `main.sch`, `main.kicad_pcb`, and `main.pro`. It is possible to change the name of the files to check by changing the macros in `kibot.mak` and `Makefile`. However, it is recommended to use the naming scheme of `main` for consistency across all OnBoard projects.

If you have multiple `.sch` files, you can append them to the `SCHEMATICS` macro in `kibot.mak`. This will allow you to ERC and generate pdfs for all of your schematics.

## Tools

OnBoard's CI/CD uses: 
* [KiBot](https://github.com/INTI-CMNB/KiBot) to generate gerbers, drill, position files and BoMs (HTML, XLSX and CSV)
* [kicad-automation-scripts](https://github.com/INTI-CMNB/kicad-automation-scripts) to run DRC/ERC, print schematics and PCB
* [InteractiveHtmlBom](https://github.com/INTI-CMNB/InteractiveHtmlBom) to generate interactive HTML BoMs
* [PcbDraw](https://github.com/INTI-CMNB/PcbDraw) to generate the PCB previews using different colors
* GitHub Actions workflow