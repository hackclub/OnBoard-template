# KiBot CI/CD Automation
Hey there! Did you know this repo automatically ERC, DRC and generates Gerbers from your design in `src`?

## How It Works
Whenever a change is made to the PCB project, KiBot will go through `src` and run KiCAD's own ERC/DRC tests, summarizing its results in Github Actions' Artifacts (`DRC`, `ERC`). Specifcally, KiBot will comb for `main.sch`, `main.kicad_pcb`, and `main.pro` files and check them.

If the board passes ERC and DRC, `OnBoard-template` will then generate fab files such as pdf schematics, gerbers, and BOMs. It will even generate JLCPCB specific Gerbers [^2]!

Here is a quick rundown on what you'll find as outputs:
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
│   └── Fabrication/        
│       └── main-F-Cu       # Top copper layer pdf
│       └── main-B-Cu       # Bottom copper layer pdf
│       └── BOM/            
│           └── main-ibon   # Online interactive BOM
│       └── Drill/          
│           └── ...         # Gerber, DRL, RPT, and PDFs for drill paths
│       └── Gerbers/          
│           └── ...         # Gerbers of layers specified in config (Cu, Mask, Paste, Silk Screen)
│       └── JLCPCB/          
│           └── ...         # Gerber files for JLCPCB fab. Directly uploadable.
│       └── Renders/
│           └── ...         # PNG renders of top and bottom in blue, green, and red masks. 
│       └── Position/
│           └── ...         # Position for top and bottom layers
```


[^2]: `OnBoard-template` also supports generation of Gerbers for `PCBWAY`, `Fusion PCB`, `P-Ban`, and `Elecrow`, however for consistency sake they are not officially endorsed for the program. If you are interested in using a fab other than `JLCPCB`, contact an Onboard orgainzer.

## Customization
As is, KiBot checks any design that sits in `src` called `main.sch`, `main.kicad_pcb`, and `main.pro`. It is possible to change the name of the files to check by changing the macros in `kibot.mak` and `Makefile`. However, it is recommended to use the naming scheme of `main` for consistency across all OnBoard projects.

KiBot will automatically pick up multiple schematic files, so don't worry about having to append them anywhere.

## Tools

OnBoard's CI/CD uses: 
* [KiBot](https://github.com/INTI-CMNB/KiBot) to generate gerbers, drill, position files and BoMs (HTML, XLSX and CSV)
* [kicad-automation-scripts](https://github.com/INTI-CMNB/kicad-automation-scripts) to run DRC/ERC, print schematics and PCB
* [InteractiveHtmlBom](https://github.com/INTI-CMNB/InteractiveHtmlBom) to generate interactive HTML BoMs
* [PcbDraw](https://github.com/INTI-CMNB/PcbDraw) to generate the PCB previews using different colors
* GitHub Actions workflow

## Credits
The KiBot was forked from [INTI-CMNB](https://github.com/INTI-CMNB) and their template repository for [KiCAD CI](https://github.com/INTI-CMNB/kicad-ci-test-spora). Please look into `kibot/LICENSE` for an in-depth copyright notice from INTI-CMNB.