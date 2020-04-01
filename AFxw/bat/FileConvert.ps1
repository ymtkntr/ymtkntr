# �w��t�H���_�ȉ��̕����R�[�h��ϊ�����B
# 
# �g�p��F PS > ./FileConvert.ps1 c:\tmp\test\Convert c:\tmp\test\Converted Shift_JIS UTF-8
#               ./FileConvert.ps1 {�ϊ��Ώۃt�H���_} {�ϊ���̃t�@�C���̕ۑ���} {�ϊ��O�̕����R�[�h} {�ԊҌ�̕����R�[�h}
# 
# http://www.atmarkit.co.jp/ait/articles/0804/18/news155.html ���

param(
	[String]$in = "c:\tmp\convert",
	[String]$out = "c:\tmp\converted",
	[String]$from = "Shift-JIS",
	[String]$to = "EUC-JP"
)

$enc_f = [Text.Encoding]::GetEncoding($from)
$enc_t = [Text.Encoding]::GetEncoding($to)
	Get-ChildItem $in -recurse |
		ForEach-Object {
			if($_.GetType().Name -eq "FileInfo"){
				$reader = New-Object IO.StreamReader($_.FullName, $enc_f)
				$o_path = $_.FullName.Replace($in, $out)
				$o_folder = Split-Path $o_path -parent
				if(!(Test-Path $o_folder)){
					[Void][IO.Directory]::CreateDirectory($o_folder)
				}
				$writer = New-Object IO.StreamWriter($o_path, $false, $enc_t)
				while(!$reader.EndOfStream){$writer.WriteLine($reader.ReadLine())}
				$reader.Close()
				$writer.Close()
			}
		}
