.class public Lcom/android/server/cpuperf/ApplicationControllerUtils;
.super Ljava/lang/Object;
.source "ApplicationControllerUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final SYSTEM_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/cpuperf/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/cpuperf/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static extractFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .param p0, "srcZipFile"    # Ljava/io/File;
    .param p1, "targetFolder"    # Ljava/io/File;

    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    return v0

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "destPath":Ljava/lang/String;
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 57
    .local v2, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 58
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 59
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v5, "destFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 63
    return v0

    .line 68
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 69
    .local v6, "fileParentDir":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 70
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_3

    .line 71
    return v0

    .line 74
    :cond_3
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x800

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 75
    .local v7, "bufferIn":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v10, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 77
    .local v8, "bufferOut":Ljava/io/BufferedOutputStream;
    new-array v9, v9, [B

    .line 79
    .local v9, "buffer":[B
    :goto_1
    invoke-virtual {v7, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v10

    move v11, v10

    .local v11, "realLength":I
    if-lez v10, :cond_4

    .line 80
    invoke-virtual {v8, v9, v0, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 81
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    goto :goto_1

    .line 83
    :cond_4
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V

    .line 84
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    .line 85
    .end local v9    # "buffer":[B
    .end local v11    # "realLength":I
    goto :goto_0

    .line 87
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "destFile":Ljava/io/File;
    .end local v6    # "fileParentDir":Ljava/io/File;
    .end local v7    # "bufferIn":Ljava/io/BufferedInputStream;
    .end local v8    # "bufferOut":Ljava/io/BufferedOutputStream;
    :cond_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v1    # "destPath":Ljava/lang/String;
    .end local v2    # "zf":Ljava/util/zip/ZipFile;
    nop

    .line 93
    const/4 v0, 0x1

    return v0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/io/IOException;
    return v0

    .line 88
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 89
    .local v1, "e":Ljava/util/zip/ZipException;
    return v0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/cpuperf/ApplicationControllerUtils;->SYSTEM_FILE:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "srcZipFile"    # Ljava/io/File;
    .param p1, "targetFolder"    # Ljava/io/File;

    .line 41
    invoke-static {p0, p1}, Lcom/android/server/cpuperf/ApplicationControllerUtils;->extractFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method
