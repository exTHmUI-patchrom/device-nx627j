.class public Lnubia/fancydrawable/ThemeDescription;
.super Ljava/lang/Object;
.source "ThemeDescription.java"


# instance fields
.field private final DEFAULT_THEME_ENG_NAME:Ljava/lang/String;

.field private final DEFAULT_THEME_TYPE:Ljava/lang/String;

.field private final THEME_DESC_FILE:Ljava/lang/String;

.field private final THEME_TITLE:Ljava/lang/String;

.field private final THEME_TYPE:Ljava/lang/String;

.field private mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "themeType"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->THEME_TYPE:Ljava/lang/String;

    .line 13
    const-string v0, "title"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->THEME_TITLE:Ljava/lang/String;

    .line 14
    const-string v0, "default"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->DEFAULT_THEME_TYPE:Ljava/lang/String;

    .line 15
    const-string v0, "nubia theme"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->DEFAULT_THEME_ENG_NAME:Ljava/lang/String;

    .line 16
    const-string v0, "data/theme/current/description.xml"

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->THEME_DESC_FILE:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    return-void
.end method

.method private getThemeTypeInfo()Lnubia/fancydrawable/ThemeDescriptionInfo;
    .locals 4

    .line 66
    const/4 v0, 0x0

    move-object v1, v0

    .line 68
    .local v1, "input":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "data/theme/current/description.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 69
    invoke-virtual {p0, v1}, Lnubia/fancydrawable/ThemeDescription;->parseXML(Ljava/io/InputStream;)Lnubia/fancydrawable/ThemeDescriptionInfo;

    move-result-object v2

    .line 70
    .local v2, "ret":Lnubia/fancydrawable/ThemeDescriptionInfo;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-object v2

    .line 72
    .end local v2    # "ret":Lnubia/fancydrawable/ThemeDescriptionInfo;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v0
.end method


# virtual methods
.method public isDefaultTheme()Z
    .locals 6

    .line 48
    invoke-direct {p0}, Lnubia/fancydrawable/ThemeDescription;->getThemeTypeInfo()Lnubia/fancydrawable/ThemeDescriptionInfo;

    move-result-object v0

    .line 49
    .local v0, "themeInfo":Lnubia/fancydrawable/ThemeDescriptionInfo;
    invoke-virtual {v0}, Lnubia/fancydrawable/ThemeDescriptionInfo;->getThemeType()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "themeType":Ljava/lang/String;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    return v2

    .line 53
    :cond_0
    invoke-virtual {v0}, Lnubia/fancydrawable/ThemeDescriptionInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "themeTitle":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 55
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x30c0088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "defaultThemeCnName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "nubia theme"

    .line 58
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    :cond_1
    return v2

    .line 62
    .end local v4    # "defaultThemeCnName":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public parseXML(Ljava/io/InputStream;)Lnubia/fancydrawable/ThemeDescriptionInfo;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 22
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "UTF-8"

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 24
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 25
    .local v1, "eventType":I
    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 26
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "themeType"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 33
    iget-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnubia/fancydrawable/ThemeDescriptionInfo;->setThemeType(Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 36
    iget-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnubia/fancydrawable/ThemeDescriptionInfo;->setThemeTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_2
    new-instance v2, Lnubia/fancydrawable/ThemeDescriptionInfo;

    invoke-direct {v2}, Lnubia/fancydrawable/ThemeDescriptionInfo;-><init>()V

    iput-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    .line 29
    nop

    .line 42
    :cond_3
    :goto_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 44
    :cond_4
    iget-object v2, p0, Lnubia/fancydrawable/ThemeDescription;->mThemeDescriptionInfo:Lnubia/fancydrawable/ThemeDescriptionInfo;

    return-object v2
.end method
