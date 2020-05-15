.class Landroid/provider/Settings$Secure$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/SettingsValidators$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings$Secure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 10
    .param p1, "value"    # Ljava/lang/String;

    .line 6604
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 6607
    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 6608
    .local v1, "ttsLocales":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 6609
    .local v2, "valid":Z
    array-length v3, v1

    move v4, v2

    move v2, v0

    .end local v2    # "valid":Z
    .local v4, "valid":Z
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 6610
    .local v5, "ttsLocale":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 6611
    .local v6, "parts":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    aget-object v7, v6, v0

    .line 6612
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    sget-object v7, Landroid/provider/SettingsValidators;->ANY_STRING_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    aget-object v8, v6, v0

    .line 6613
    invoke-interface {v7, v8}, Landroid/provider/SettingsValidators$Validator;->validate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Landroid/provider/SettingsValidators;->LOCALE_VALIDATOR:Landroid/provider/SettingsValidators$Validator;

    aget-object v8, v6, v9

    .line 6614
    invoke-interface {v7, v8}, Landroid/provider/SettingsValidators$Validator;->validate(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v9, v0

    :goto_1
    or-int/2addr v4, v9

    .line 6609
    .end local v5    # "ttsLocale":Ljava/lang/String;
    .end local v6    # "parts":[Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6616
    :cond_2
    return v4

    .line 6605
    .end local v1    # "ttsLocales":[Ljava/lang/String;
    .end local v4    # "valid":Z
    :cond_3
    :goto_2
    return v0
.end method
