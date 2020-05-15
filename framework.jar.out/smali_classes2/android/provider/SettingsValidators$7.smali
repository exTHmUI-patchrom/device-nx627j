.class Landroid/provider/SettingsValidators$7;
.super Ljava/lang/Object;
.source "SettingsValidators.java"

# interfaces
.implements Landroid/provider/SettingsValidators$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SettingsValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isStringPackageName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 114
    return v0

    .line 116
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "subparts":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 118
    .local v2, "isValidPackageName":Z
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 119
    .local v4, "subpart":Ljava/lang/String;
    invoke-direct {p0, v4}, Landroid/provider/SettingsValidators$7;->isSubpartValidForPackageName(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 120
    if-nez v2, :cond_1

    goto :goto_1

    .line 118
    .end local v4    # "subpart":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_2
    :goto_1
    return v2
.end method

.method private isSubpartValidForPackageName(Ljava/lang/String;)Z
    .locals 6
    .param p1, "subpart"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    .line 128
    .local v0, "isValidSubpart":Z
    const/4 v2, 0x1

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "isValidSubpart":Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5f

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    and-int/2addr v3, v4

    .line 131
    if-nez v3, :cond_3

    .end local v0    # "i":I
    goto :goto_3

    .line 128
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    .end local v0    # "i":I
    :cond_4
    :goto_3
    return v3
.end method


# virtual methods
.method public validate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/provider/SettingsValidators$7;->isStringPackageName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
