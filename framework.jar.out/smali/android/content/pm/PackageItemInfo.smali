.class public Landroid/content/pm/PackageItemInfo;
.super Ljava/lang/Object;
.source "PackageItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageItemInfo$DisplayNameComparator;,
        Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;,
        Landroid/content/pm/PackageItemInfo$SafeLabelFlags;
    }
.end annotation


# static fields
.field public static final DUMP_FLAG_ALL:I = 0x3

.field public static final DUMP_FLAG_APPLICATION:I = 0x2

.field public static final DUMP_FLAG_DETAILS:I = 0x1

.field private static final LINE_FEED_CODE_POINT:I = 0xa

.field private static final MAX_LABEL_SIZE_PX:F = 500.0f

.field private static final MAX_SAFE_LABEL_LENGTH:I = 0xc350

.field private static final NBSP_CODE_POINT:I = 0xa0

.field public static final SAFE_LABEL_FLAG_FIRST_LINE:I = 0x4

.field public static final SAFE_LABEL_FLAG_SINGLE_LINE:I = 0x2

.field public static final SAFE_LABEL_FLAG_TRIM:I = 0x1

.field private static volatile sForceSafeLabels:Z


# instance fields
.field public banner:I

.field public icon:I

.field public labelRes:I

.field public logo:I

.field public metaData:Landroid/os/Bundle;

.field public name:Ljava/lang/String;

.field public nonLocalizedLabel:Ljava/lang/CharSequence;

.field public packageName:Ljava/lang/String;

.field public showUserIcon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/16 v0, -0x2710

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageItemInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/PackageItemInfo;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 171
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 173
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 174
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 175
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 176
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 177
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 178
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 179
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 180
    iget v0, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 181
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 698
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 699
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 704
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    .line 705
    return-void
.end method

.method private static isNewline(I)Z
    .locals 2
    .param p0, "codePoint"    # I

    .line 271
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 272
    .local v0, "type":I
    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static isWhiteSpace(I)Z
    .locals 1
    .param p0, "codePoint"    # I

    .line 277
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setForceSafeLabels(Z)V
    .locals 0
    .param p0, "forceSafeLabels"    # Z

    .line 106
    sput-boolean p0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    .line 107
    return-void
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 662
    return-void
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 652
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    if-eqz v0, :cond_2

    .line 653
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "labelRes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nonLocalizedLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " icon=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 655
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " banner=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 656
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 658
    :cond_2
    return-void
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 716
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 534
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 536
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 537
    return-object v0

    .line 540
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 570
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 555
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 606
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 495
    const/4 v0, 0x0

    .line 496
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getRedirectDrawable(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    return-object v0

    .line 502
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 195
    sget-boolean v0, Landroid/content/pm/PackageItemInfo;->sForceSafeLabels:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 585
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 587
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 588
    return-object v0

    .line 591
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 227
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageItemInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "label":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "labelStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0xc350

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 235
    .local v2, "labelLength":I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 236
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    move v5, v4

    .line 237
    .local v5, "offset":I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 239
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Character;->getType(I)I

    move-result v7

    .line 240
    .local v7, "type":I
    const/16 v8, 0xd

    if-eq v7, v8, :cond_3

    const/16 v8, 0xf

    if-eq v7, v8, :cond_3

    const/16 v8, 0xe

    if-ne v7, v8, :cond_0

    goto :goto_2

    .line 247
    :cond_0
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 248
    .local v8, "charCount":I
    const/16 v9, 0xc

    if-ne v7, v9, :cond_1

    .line 249
    const/16 v9, 0x20

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    .line 253
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 256
    :cond_2
    :goto_1
    add-int/2addr v5, v8

    .line 257
    .end local v6    # "codePoint":I
    .end local v7    # "type":I
    .end local v8    # "charCount":I
    goto :goto_0

    .line 243
    .restart local v6    # "codePoint":I
    .restart local v7    # "type":I
    :cond_3
    :goto_2
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 244
    nop

    .line 259
    .end local v6    # "codePoint":I
    .end local v7    # "type":I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 261
    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v4

    .line 263
    :cond_5
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 264
    .local v4, "paint":Landroid/text/TextPaint;
    const/high16 v6, 0x42280000    # 42.0f

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 266
    const/high16 v6, 0x43fa0000    # 500.0f

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v4, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    return-object v6
.end method

.method public loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;
    .locals 19
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "ellipsizeDip"    # F
    .param p3, "flags"    # I

    move/from16 v0, p2

    .line 396
    move/from16 v1, p3

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 397
    .local v2, "onlyKeepFirstLine":Z
    :goto_0
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 398
    .local v5, "forceSingleLine":Z
    :goto_1
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    .line 400
    .local v6, "trim":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-ltz v8, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    invoke-static {v8}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 402
    const/4 v8, 0x7

    invoke-static {v1, v8}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 404
    if-eqz v2, :cond_5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    nop

    :cond_5
    :goto_4
    const-string v8, "Cannot set SAFE_LABEL_FLAG_SINGLE_LINE and SAFE_LABEL_FLAG_FIRST_LINE at the same time"

    invoke-static {v3, v8}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 409
    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/PackageItemInfo;->loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "label":Ljava/lang/String;
    new-instance v8, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;

    .line 422
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;-><init>(Ljava/lang/String;)V

    .line 424
    .local v8, "labelStr":Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;
    const/4 v9, -0x1

    .line 425
    .local v9, "firstNonWhiteSpace":I
    const/4 v10, -0x1

    .line 428
    .local v10, "firstTrailingWhiteSpace":I
    invoke-virtual {v8}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->length()I

    move-result v11

    .line 429
    .local v11, "labelLength":I
    move v12, v10

    move v10, v9

    move v9, v4

    .local v9, "offset":I
    .local v10, "firstNonWhiteSpace":I
    .local v12, "firstTrailingWhiteSpace":I
    :goto_5
    const/4 v13, -0x1

    if-ge v9, v11, :cond_c

    .line 430
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->codePointAt(I)I

    move-result v14

    .line 431
    .local v14, "codePoint":I
    invoke-static {v14}, Ljava/lang/Character;->getType(I)I

    move-result v15

    .line 432
    .local v15, "type":I
    invoke-static {v14}, Ljava/lang/Character;->charCount(I)I

    move-result v16

    .line 433
    .local v16, "codePointLen":I
    invoke-static {v14}, Landroid/content/pm/PackageItemInfo;->isNewline(I)Z

    move-result v17

    .line 435
    .local v17, "isNewline":Z
    const v7, 0xc350

    if-gt v9, v7, :cond_b

    if-eqz v2, :cond_6

    if-eqz v17, :cond_6

    goto :goto_7

    .line 438
    :cond_6
    if-eqz v5, :cond_7

    if-eqz v17, :cond_7

    .line 439
    add-int v7, v9, v16

    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->removeRange(II)V

    goto :goto_6

    .line 440
    :cond_7
    const/16 v7, 0xf

    if-ne v15, v7, :cond_8

    if-nez v17, :cond_8

    .line 441
    add-int v7, v9, v16

    invoke-virtual {v8, v9, v7}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->removeRange(II)V

    goto :goto_6

    .line 442
    :cond_8
    if-eqz v6, :cond_a

    invoke-static {v14}, Landroid/content/pm/PackageItemInfo;->isWhiteSpace(I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 444
    if-ne v10, v13, :cond_9

    .line 445
    move v10, v9

    .line 447
    :cond_9
    add-int v7, v9, v16

    .line 450
    .end local v12    # "firstTrailingWhiteSpace":I
    .local v7, "firstTrailingWhiteSpace":I
    move v12, v7

    .end local v7    # "firstTrailingWhiteSpace":I
    .restart local v12    # "firstTrailingWhiteSpace":I
    :cond_a
    :goto_6
    add-int v9, v9, v16

    .line 451
    .end local v14    # "codePoint":I
    .end local v15    # "type":I
    .end local v16    # "codePointLen":I
    .end local v17    # "isNewline":Z
    nop

    .line 429
    const/4 v7, 0x0

    goto :goto_5

    .line 436
    .restart local v14    # "codePoint":I
    .restart local v15    # "type":I
    .restart local v16    # "codePointLen":I
    .restart local v17    # "isNewline":Z
    :cond_b
    :goto_7
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 437
    nop

    .line 453
    .end local v9    # "offset":I
    .end local v14    # "codePoint":I
    .end local v15    # "type":I
    .end local v16    # "codePointLen":I
    .end local v17    # "isNewline":Z
    :cond_c
    if-eqz v6, :cond_f

    .line 455
    if-ne v10, v13, :cond_d

    .line 457
    invoke-virtual {v8, v4}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->removeAllCharAfter(I)V

    goto :goto_8

    .line 459
    :cond_d
    if-lez v10, :cond_e

    .line 460
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->removeAllCharBefore(I)V

    .line 462
    :cond_e
    if-ge v12, v11, :cond_f

    .line 463
    invoke-virtual {v8, v12}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->removeAllCharAfter(I)V

    .line 468
    :cond_f
    :goto_8
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_10

    .line 469
    invoke-virtual {v8}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 472
    :cond_10
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    .line 473
    .local v4, "paint":Landroid/text/TextPaint;
    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 475
    invoke-virtual {v8}, Landroid/content/pm/PackageItemInfo$StringWithRemovedChars;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v4, v0, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    return-object v7
.end method

.method public loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 519
    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadUnsafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 204
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 207
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 213
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    return-object v0

    .line 216
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "name"    # Ljava/lang/String;

    .line 623
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, "resid":I
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/PackageItemInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/pm/PackageManager;->getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    return-object v1

    .line 629
    .end local v0    # "resid":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 665
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 669
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 672
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 673
    iget v0, p0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 680
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 681
    .local v0, "token":J
    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 682
    const-wide v2, 0x10900000001L

    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 684
    :cond_0
    const-wide v2, 0x10900000002L

    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 685
    iget v2, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    iget v2, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-nez v2, :cond_1

    iget v2, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    if-eqz v2, :cond_2

    .line 686
    :cond_1
    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 687
    const-wide v2, 0x10900000004L

    iget-object v4, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 688
    const-wide v2, 0x10500000005L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 689
    const-wide v2, 0x10500000006L

    iget v4, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 691
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 692
    return-void
.end method
