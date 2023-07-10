# Music
音乐文档模板。Music document template.

## 如何构建 How to build
### 从 `.ly` 文件到 `.pdf` 文件 From `.ly` file to `.pdf` file
以 `./Lilypond-demo/lilypond-demo.ly` 文件为例, 用 `lilypond` 由 `.lytex` 文件生成 `.pdf` 文件:
```
lilypond -o lilypond-demo lilypond-demo.ly
```

### 从 `.lytex` 文件到 `.pdf` 文件 From `.lytex` file to `.pdf` file
以 `./Lilypond-book-demo/lilypond-book-demo.lytex` 文件为例,
1. 用 `lilypond-book` 由 `.lytex` 文件生成 `.tex` 文件及其他辅助文件:
```
lilypond-book -o lilypond-book-demo --pdf lilypond-book-demo.lytex
```
2. 用 `xelatex` 由 `.tex` 文件生成 `.pdf` 文件:
```
cd lilypond-book-demo
xelatex -interaction=nonstopmode -file-line-error lilypond-book-demo.tex
```

若你用 VSCode, 则可借助 `./vscode/tasks.json` 中定义的任务自动完成构建.
