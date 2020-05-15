.class public final Landroid/view/textclassifier/SelectionSessionLogger$SignatureParser;
.super Ljava/lang/Object;
.source "SelectionSessionLogger.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/SelectionSessionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignatureParser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSignature(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "classifierId"    # Ljava/lang/String;
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "hash"    # I

    .line 264
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s|%s|%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getClassifierId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "signature"    # Ljava/lang/String;

    .line 268
    if-nez p0, :cond_0

    .line 269
    const-string v0, ""

    return-object v0

    .line 271
    :cond_0
    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "end":I
    if-ltz v0, :cond_1

    .line 273
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 275
    :cond_1
    const-string v1, ""

    return-object v1
.end method

.method static getHash(Ljava/lang/String;)I
    .locals 3
    .param p0, "signature"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 292
    return v0

    .line 294
    :cond_0
    const-string/jumbo v1, "|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 295
    .local v1, "index1":I
    const-string/jumbo v2, "|"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 296
    .local v2, "index2":I
    if-lez v2, :cond_1

    .line 297
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 299
    :cond_1
    return v0
.end method

.method static getModelName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "signature"    # Ljava/lang/String;

    .line 279
    if-nez p0, :cond_0

    .line 280
    const-string v0, ""

    return-object v0

    .line 282
    :cond_0
    const-string/jumbo v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 283
    .local v0, "start":I
    const-string/jumbo v2, "|"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 284
    .local v2, "end":I
    if-lt v0, v1, :cond_1

    if-lt v2, v0, :cond_1

    .line 285
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 287
    :cond_1
    const-string v1, ""

    return-object v1
.end method
