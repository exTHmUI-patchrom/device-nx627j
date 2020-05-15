.class final Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;
.super Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;
.source "EnterpriseCustomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field destFile:Ljava/io/File;

.field outputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;


# direct methods
.method private constructor <init>(Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->this$0:Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;

    invoke-direct {p0}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;
    .param p2, "x1"    # Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$1;

    .line 67
    invoke-direct {p0, p1}, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;-><init>(Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;)V

    return-void
.end method


# virtual methods
.method public closeFile()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    .line 128
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public closeFileOutputStream()Z
    .locals 2

    .line 179
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/4 v1, 0x0

    return v1
.end method

.method public copyFile([BI)Z
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "byteReads"    # I

    .line 115
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v0, 0x1

    return v0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public createFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dest"    # Ljava/lang/String;

    .line 192
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 193
    return v1

    .line 195
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    .line 197
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 198
    :cond_1
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_2
    return v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public createFileOutputStream()Z
    .locals 2

    .line 166
    :try_start_0
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->destFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->outputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_0
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dest"    # Ljava/lang/String;

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    return v1

    .line 216
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "destFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_1
    goto :goto_0

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->this$0:Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;

    invoke-static {v0}, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->access$200(Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->access$300()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lnubia/enterprisecustom/IEnterpriseCustomManager$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public getEnterpriseCustomComplete()Z
    .locals 3

    .line 151
    :try_start_0
    const-string v0, "1"

    const-string/jumbo v1, "persist.sys.enterprisecustom.complete"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 159
    invoke-static {p1}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnterPriseCustompackage(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packagename"    # Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 76
    return v2

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    return v2

    .line 82
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 83
    .local v1, "instream":Ljava/io/InputStream;
    nop

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "line":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v7, "GB2312"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 86
    .local v4, "buffreader":Ljava/io/BufferedReader;
    :cond_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_3

    .line 87
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    const/4 v2, 0x1

    return v2

    .line 91
    :cond_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "instream":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "buffreader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "EnterPriseCustompackage"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 93
    :catch_1
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "EnterPriseCustompackage"

    const-string v4, "The File doesn\'t not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 98
    :goto_1
    return v2
.end method

.method public isSupportFactoryReset(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->isSupportFactoryReset(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mkdirsFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dest"    # Ljava/lang/String;

    .line 229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 230
    return v1

    .line 232
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "destFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 235
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    const/16 v2, 0x1fd

    const/4 v3, -0x1

    invoke-static {v0, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v1, 0x1

    return v1

    .line 240
    :cond_2
    return v1

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public setEnterpriseCustomComplete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 141
    :try_start_0
    const-string/jumbo v0, "persist.sys.enterprisecustom.complete"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v0, 0x1

    return v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public unstallAppAndReboot(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 107
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .line 108
    .local v6, "user":Landroid/os/UserHandle;
    new-instance v7, Lcn/nubia/server/enterprisecustom/UninstallApp;

    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService$BinderService;->this$0:Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;

    invoke-static {v0}, Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;->access$200(Lcn/nubia/server/enterprisecustom/EnterpriseCustomService;)Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, v7

    move-object v2, p1

    move-object v3, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/server/enterprisecustom/UninstallApp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Z)V

    .line 109
    .local v0, "mUninstallApp":Lcn/nubia/server/enterprisecustom/UninstallApp;
    invoke-virtual {v0}, Lcn/nubia/server/enterprisecustom/UninstallApp;->StartUninstallApp()Z

    move-result v1

    return v1
.end method
