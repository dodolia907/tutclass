# tutclass
## 環境
- gcc (C/C++コンパイラ)
- make
- Python 3
- Java 21 (JDK)
- Emacs (Lisp)
- Verilog (Icarus Verilog)
- LaTeX (TeX Live)
## 使い方
予めDockerまたはPodman等のインストールが必要です。
https://docs.docker.com/get-started/get-docker/
https://podman.io/docs/installation

### カレントディレクトリをマウントしてbashを起動
```bash
## Bash
$ docker run --rm -it -v $(pwd):/workdir -w /workdir ghcr.io/dodolia907/tutclass:main
```
```powershell
## PowerShell
> docker run --rm -it -v "${pwd}:/workdir" -w /workdir ghcr.io/dodolia907/tutclass:main
```

### 同じディレクトリのファイルをコンパイル
```bash
## Bash
$ docker run --rm -v $(pwd):/workdir -w /workdir ghcr.io/dodolia907/tutclass:main <実行コマンド>
```
```powershell
## PowerShell
> docker run --rm -v "${pwd}:/workdir" -w /workdir ghcr.io/dodolia907/tutclass:main <実行コマンド>
```

### VSCodeのdevcontainerを使う
1. VSCodeの拡張機能「Remote - Containers」をインストール
2. .devcontainer/devcontainer.jsonを編集
```json
{
    "image": "ghcr.io/dodolia907/tutclass:main"
}
```
3. VSCodeのコマンドパレットから「Remote-Containers: open folder in container」を選択