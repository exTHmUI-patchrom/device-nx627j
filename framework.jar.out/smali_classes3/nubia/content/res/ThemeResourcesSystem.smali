.class public Lnubia/content/res/ThemeResourcesSystem;
.super Lnubia/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static sNubia:Lnubia/content/res/ThemeResources;

.field private static sSystemUI:Lnubia/content/res/ThemeResources;


# instance fields
.field protected mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lnubia/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lnubia/content/res/ThemeResources$MetaData;)V
    .locals 1
    .param p1, "wrappedResources"    # Lnubia/content/res/ThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "metaData"    # Lnubia/content/res/ThemeResources$MetaData;

    .line 23
    const-string v0, "framework-res"

    invoke-direct {p0, p1, p2, v0, p3}, Lnubia/content/res/ThemeResources;-><init>(Lnubia/content/res/ThemeResources;Landroid/content/res/Resources;Ljava/lang/String;Lnubia/content/res/ThemeResources$MetaData;)V

    .line 24
    iget-object v0, p3, Lnubia/content/res/ThemeResources$MetaData;->themePath:Ljava/lang/String;

    iput-object v0, p0, Lnubia/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private getThemeFileStreamNubia(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    const-string v1, "lock_screen_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    const-string v1, "status_bar_toggle_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lnubia/content/res/ThemeResourcesSystem;->mResources:Landroid/content/res/Resources;

    const-string v2, "com.android.systemui"

    invoke-static {v1, v2}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v1

    sput-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    .line 44
    :cond_1
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 47
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 48
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 49
    :cond_3
    return-object v0
.end method

.method private getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "realName"    # Ljava/lang/String;

    .line 64
    const-string v0, "default_wallpaper.jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 66
    :cond_0
    const/4 v0, 0x0

    .line 68
    .local v0, "result":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-nez v0, :cond_1

    .line 69
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamInner(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 71
    :cond_1
    return-object v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/Resources;)Lnubia/content/res/ThemeResourcesSystem;
    .locals 3
    .param p0, "originalResources"    # Landroid/content/res/Resources;

    .line 83
    const-string v0, "framework-nubia-res"

    invoke-static {p0, v0}, Lnubia/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/Resources;Ljava/lang/String;)Lnubia/content/res/ThemeResources;

    move-result-object v0

    sput-object v0, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    .line 85
    new-instance v0, Lnubia/content/res/ThemeResourcesSystem;

    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lnubia/content/res/ThemeResources$MetaData;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0, v1}, Lnubia/content/res/ThemeResourcesSystem;-><init>(Lnubia/content/res/ThemeResourcesSystem;Landroid/content/res/Resources;Lnubia/content/res/ThemeResources$MetaData;)V

    return-object v0
.end method


# virtual methods
.method public checkUpdate()Z
    .locals 1

    .line 90
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 91
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sSystemUI:Lnubia/content/res/ThemeResources;

    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    .line 93
    :cond_0
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->checkUpdate()Z

    move-result v0

    return v0
.end method

.method public containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getAwesomeLockscreenFileStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "result":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p2}, Lnubia/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    .line 108
    .local v1, "info":Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    if-eqz v1, :cond_3

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iget v3, v1, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mDensity:I

    .line 111
    .local v3, "density":I
    if-lez v3, :cond_0

    .line 112
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v4

    .line 113
    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 115
    :cond_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 117
    .local v4, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x1000

    :try_start_0
    new-array v5, v5, [B

    .line 118
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 119
    .local v6, "n":I
    const/4 v7, 0x0

    move v8, v6

    move v6, v7

    .line 120
    .local v6, "total":I
    .local v8, "n":I
    :cond_1
    :goto_0
    iget-object v9, v1, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    if-eq v10, v9, :cond_2

    .line 121
    invoke-virtual {v4, v5, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 122
    if-eq v8, v10, :cond_1

    .line 123
    add-int/2addr v6, v8

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .line 135
    .end local v5    # "buffer":[B
    .end local v6    # "total":I
    .end local v8    # "n":I
    :try_start_1
    iget-object v5, v1, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_1
    goto :goto_4

    .line 137
    :catch_0
    move-exception v5

    .line 138
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 134
    :catchall_0
    move-exception v5

    goto :goto_2

    .line 129
    :catch_1
    move-exception v5

    .line 130
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v6, "ThemeResourcesSystem"

    const-string v7, "ThemeResourcesSystem getIconi"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    const/4 v0, 0x0

    .line 135
    .end local v5    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v5, v1, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 127
    :catch_2
    move-exception v5

    .line 128
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_5
    iget-object v5, v1, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 134
    :goto_2
    nop

    .line 135
    :try_start_6
    iget-object v6, v1, Lnubia/content/res/ThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 136
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 139
    goto :goto_3

    .line 137
    :catch_3
    move-exception v6

    .line 138
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 139
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    throw v5

    .line 142
    .end local v2    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v3    # "density":I
    .end local v4    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :goto_4
    return-object v0
.end method

.method public getIconStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLockscreenStream(Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLockscreenWallpaper()Ljava/io/File;
    .locals 3

    .line 235
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lnubia/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lock_wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnubia/content/res/ThemeResourcesSystem;->mWrapped:Lnubia/content/res/ThemeResources;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lnubia/content/res/ThemeResourcesSystem;->mWrapped:Lnubia/content/res/ThemeResources;

    check-cast v1, Lnubia/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lnubia/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v0

    .line 239
    :cond_0
    return-object v0
.end method

.method public getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 160
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    :cond_0
    if-nez v0, :cond_1

    .line 162
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    :cond_1
    return-object v0
.end method

.method public getThemeFileStream(ILjava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "type"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .line 169
    const/16 v0, 0x2f

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "realName":Ljava/lang/String;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 171
    invoke-direct {p0, p2, v0}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamNubia(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    return-object v1

    .line 173
    :cond_0
    invoke-direct {p0, p2, v0}, Lnubia/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Ljava/lang/String;Ljava/lang/String;)Lnubia/content/res/ThemeZipFile$ThemeFileInfo;

    move-result-object v1

    return-object v1
.end method

.method public getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 180
    sget-object v1, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lnubia/content/res/ThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 181
    :cond_0
    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lnubia/content/res/ThemeResourcesSystem;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    .line 183
    :cond_1
    return-object v0
.end method

.method public hasAwesomeLockscreen()Z
    .locals 1

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public hasIcon(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iconName"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public hasValues()Z
    .locals 1

    .line 255
    invoke-super {p0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnubia/content/res/ThemeResourcesSystem;->sNubia:Lnubia/content/res/ThemeResources;

    .line 256
    invoke-virtual {v0}, Lnubia/content/res/ThemeResources;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 255
    :goto_1
    return v0
.end method

.method public resetIcons()V
    .locals 0

    .line 263
    return-void
.end method
