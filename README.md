# qtcreator-git-version

### git配置
* 打标签 git tag -a <commit-id>
* [查看版本号 git describe --tags --dirty]

### windows脚本  
* version.cmd
```
del version.h

echo #ifndef VERSION_H >>version.h
echo #define VERSION_H >>version.h
echo. >>version.h
echo. >>version.h

for /f "delims=" %%i in ('git describe --tags --dirty') do (set a=%%i)
echo #define GIT_VERSION "%a%" >>version.h
echo. >>version.h
echo. >>version.h

echo #endif // VERSION_H >>version.h
```

### 自定义构建步骤
* 在“项目-构建步骤”里添加一个步骤，移动到qmake之前
* ![image](http://note.youdao.com/favicon.ico)

* 可用的路径
```
%{CurrentProject:Name}  
%{CurrentKit:FileSystemName}  
%{CurrentBuild:Name}  
%{buildDir}  
%{sourceDir}  
```
