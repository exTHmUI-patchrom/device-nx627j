.class public Landroid/graphics/FontListParser;
.super Ljava/lang/Object;
.source "FontListParser.java"


# static fields
.field private static final CUSTOM_FONT_PREFIX:Ljava/lang/String;

.field private static final DEFAULT_FONT_NAME_N:Ljava/lang/String; = "Roboto-Regular.ttf"

.field private static final FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final NUBIA_COMMON_UI_TITLE_FONT_NAME_N:Ljava/lang/String; = "NubiaFont-Medium.otf"

.field private static final NUBIA_FONT_PATH_PREFIX:Ljava/lang/String; = "/data/theme/current/fonts/"

.field private static defaultFontHasBeenRedirect:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    invoke-static {}, Landroid/graphics/FontListParser;->getCustomFontPrefix()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    .line 131
    const-string v0, "^[ \\n\\r\\t]+|[ \\n\\r\\t]+$"

    .line 132
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    .line 131
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCustomFontPath()Ljava/lang/String;
    .locals 7

    .line 257
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 258
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 259
    return-object v1

    .line 262
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 263
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 264
    .local v5, "tmpName":Ljava/lang/String;
    const-string v6, ".ttc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".otf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 262
    .end local v4    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    .restart local v4    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 268
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "tmpName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static getCustomFontPrefix()Ljava/lang/String;
    .locals 1

    .line 233
    const-string v0, "/data/theme/current/fonts/"

    return-object v0
.end method

.method static getCustomSanitizedName()Ljava/lang/String;
    .locals 7

    .line 272
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 273
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 274
    return-object v1

    .line 277
    :cond_0
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 278
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 279
    .local v5, "tmpName":Ljava/lang/String;
    const-string v6, ".ttc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".otf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, ".ttf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 277
    .end local v4    # "f":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .restart local v4    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    return-object v5

    .line 283
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "tmpName":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static getDefaultFontName()Ljava/lang/String;
    .locals 1

    .line 224
    const-string v0, "Roboto-Regular.ttf"

    return-object v0
.end method

.method private static getNubiaCommonUiFontName()Ljava/lang/String;
    .locals 1

    .line 229
    const-string v0, "NubiaFont-Medium.otf"

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Landroid/text/FontConfig;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 55
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 56
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 57
    invoke-static {v0}, Landroid/graphics/FontListParser;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 57
    return-object v1

    .line 59
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method private static readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "to"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "toName":Ljava/lang/String;
    const-string/jumbo v3, "weight"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "weightStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 200
    const/16 v3, 0x190

    .line 200
    .local v3, "weight":I
    goto :goto_0

    .line 202
    .end local v3    # "weight":I
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 204
    .restart local v3    # "weight":I
    :goto_0
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 205
    new-instance v4, Landroid/text/FontConfig$Alias;

    invoke-direct {v4, v0, v2, v3}, Landroid/text/FontConfig$Alias;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object v4
.end method

.method private static readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    const-string/jumbo v0, "tag"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "tagStr":Ljava/lang/String;
    const-string/jumbo v2, "stylevalue"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "styleValueStr":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 190
    new-instance v2, Landroid/graphics/fonts/FontVariationAxis;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/fonts/FontVariationAxis;-><init>(Ljava/lang/String;F)V

    return-object v2
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "families":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Family;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    const-string v2, "familyset"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_6

    .line 70
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "tag":Ljava/lang/String;
    const-string v4, "family"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 77
    invoke-static {p0}, Landroid/graphics/FontListParser;->readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Family;

    move-result-object v4

    .line 78
    .local v4, "tempFamily":Landroid/text/FontConfig$Family;
    sget-boolean v5, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    if-eqz v5, :cond_3

    .line 79
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v5, "customFontList":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    invoke-virtual {v4}, Landroid/text/FontConfig$Family;->getFonts()[Landroid/text/FontConfig$Font;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_2

    aget-object v10, v6, v9

    .line 81
    .local v10, "f":Landroid/text/FontConfig$Font;
    invoke-virtual {v10}, Landroid/text/FontConfig$Font;->getIsCustomFont()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 82
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v10    # "f":Landroid/text/FontConfig$Font;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 85
    :cond_2
    sput-boolean v8, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    .line 86
    new-instance v6, Landroid/text/FontConfig$Family;

    invoke-virtual {v4}, Landroid/text/FontConfig$Family;->getName()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/text/FontConfig$Font;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/FontConfig$Font;

    .line 88
    invoke-virtual {v4}, Landroid/text/FontConfig$Family;->getLanguages()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroid/text/FontConfig$Family;->getVariant()I

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/text/FontConfig$Family;-><init>(Ljava/lang/String;[Landroid/text/FontConfig$Font;[Ljava/lang/String;I)V

    move-object v4, v6

    .line 90
    .end local v5    # "customFontList":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v4    # "tempFamily":Landroid/text/FontConfig$Family;
    goto :goto_2

    :cond_4
    const-string v4, "alias"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 93
    invoke-static {p0}, Landroid/graphics/FontListParser;->readAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Alias;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_5
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 97
    .end local v2    # "tag":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 98
    :cond_6
    new-instance v2, Landroid/text/FontConfig;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/text/FontConfig$Family;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/FontConfig$Family;

    .line 99
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/text/FontConfig$Alias;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/FontConfig$Alias;

    invoke-direct {v2, v3, v4}, Landroid/text/FontConfig;-><init>([Landroid/text/FontConfig$Family;[Landroid/text/FontConfig$Alias;)V

    .line 98
    return-object v2
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Family;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "name":Ljava/lang/String;
    const-string/jumbo v2, "lang"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "lang":Ljava/lang/String;
    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "langs":[Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "variant"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "variant":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v4, "fonts":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Font;>;"
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "font"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 113
    invoke-static {p0}, Landroid/graphics/FontListParser;->readFont(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Font;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 115
    :cond_2
    invoke-static {p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 117
    .end local v5    # "tag":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 118
    :cond_3
    const/4 v5, 0x0

    .line 119
    .local v5, "intVariant":I
    if-eqz v1, :cond_5

    .line 120
    const-string v6, "compact"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 121
    const/4 v5, 0x1

    goto :goto_3

    .line 122
    :cond_4
    const-string v6, "elegant"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 123
    const/4 v5, 0x2

    .line 126
    :cond_5
    :goto_3
    new-instance v6, Landroid/text/FontConfig$Family;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/text/FontConfig$Font;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/FontConfig$Font;

    invoke-direct {v6, v0, v7, v3, v5}, Landroid/text/FontConfig$Family;-><init>(Ljava/lang/String;[Landroid/text/FontConfig$Font;[Ljava/lang/String;I)V

    return-object v6
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;)Landroid/text/FontConfig$Font;
    .locals 18
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    move-object/from16 v1, p0

    const-string v0, "index"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "indexStr":Ljava/lang/String;
    const/4 v0, 0x0

    if-nez v3, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v7, v4

    .line 138
    .local v7, "index":I
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v4, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    const-string/jumbo v5, "weight"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 140
    .local v12, "weightStr":Ljava/lang/String;
    if-nez v12, :cond_1

    const/16 v5, 0x190

    :goto_1
    move v9, v5

    goto :goto_2

    :cond_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 141
    .local v9, "weight":I
    :goto_2
    const-string/jumbo v5, "italic"

    const-string/jumbo v6, "style"

    invoke-interface {v1, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 142
    .local v13, "isItalic":Z
    const-string v5, "fallbackFor"

    invoke-interface {v1, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "fallbackFor":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v5, "filename":Ljava/lang/StringBuilder;
    :goto_3
    move-object v14, v5

    .line 144
    .end local v5    # "filename":Ljava/lang/StringBuilder;
    .local v14, "filename":Ljava/lang/StringBuilder;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    .line 145
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 146
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    goto :goto_5

    .line 149
    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "tag":Ljava/lang/String;
    const-string v6, "axis"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 151
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->readAxis(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 153
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/graphics/FontListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 155
    .end local v5    # "tag":Ljava/lang/String;
    :goto_4
    nop

    .line 143
    :goto_5
    move-object v5, v14

    goto :goto_3

    .line 156
    :cond_5
    sget-object v5, Landroid/graphics/FontListParser;->FILENAME_WHITESPACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "sanitizedName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/system/fonts/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 159
    .local v15, "fullFilename":Ljava/lang/String;
    move v6, v0

    .line 162
    .local v6, "customPathFlag":Z
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/graphics/FontListParser;->redirectFontOfTheme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move v6, v0

    .line 164
    if-eqz v6, :cond_6

    .line 165
    invoke-static {}, Landroid/graphics/FontListParser;->getCustomSanitizedName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 169
    :cond_6
    goto :goto_6

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    .end local v5    # "sanitizedName":Ljava/lang/String;
    .end local v6    # "customPathFlag":Z
    .local v0, "sanitizedName":Ljava/lang/String;
    .local v11, "customPathFlag":Z
    :goto_6
    move-object v0, v5

    move v11, v6

    new-instance v16, Landroid/text/FontConfig$Font;

    .line 179
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/graphics/fonts/FontVariationAxis;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, [Landroid/graphics/fonts/FontVariationAxis;

    move-object/from16 v5, v16

    move-object v6, v0

    move v10, v13

    move-object/from16 v17, v0

    move v0, v11

    move-object v11, v2

    .end local v11    # "customPathFlag":Z
    .local v0, "customPathFlag":Z
    .local v17, "sanitizedName":Ljava/lang/String;
    invoke-direct/range {v5 .. v11}, Landroid/text/FontConfig$Font;-><init>(Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IZLjava/lang/String;)V

    .line 180
    .local v5, "returnFont":Landroid/text/FontConfig$Font;
    invoke-virtual {v5, v0}, Landroid/text/FontConfig$Font;->setIsCustomFont(Z)V

    .line 181
    return-object v5
.end method

.method private static redirectFontOfTheme(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "fullFilename"    # Ljava/lang/String;

    .line 239
    invoke-static {}, Landroid/graphics/FontListParser;->getDefaultFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Landroid/graphics/FontListParser;->getNubiaCommonUiFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    return v1

    .line 243
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Landroid/graphics/FontListParser;->CUSTOM_FONT_PREFIX:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "fontFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    invoke-static {}, Landroid/graphics/FontListParser;->getCustomFontPath()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "customFontPath":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    const/4 v1, 0x1

    sput-boolean v1, Landroid/graphics/FontListParser;->defaultFontHasBeenRedirect:Z

    .line 251
    return v1

    .line 253
    :cond_2
    return v1

    .line 245
    .end local v2    # "customFontPath":Ljava/lang/String;
    :cond_3
    :goto_0
    return v1
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 211
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 216
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 213
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 214
    nop

    .line 217
    :goto_1
    goto :goto_0

    .line 220
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
