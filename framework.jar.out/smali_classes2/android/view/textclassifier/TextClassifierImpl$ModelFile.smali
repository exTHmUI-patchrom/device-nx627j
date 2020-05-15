.class final Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModelFile"
.end annotation


# instance fields
.field private final mLanguageIndependent:Z

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mSupportedLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersion:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Z)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p5, "languageIndependent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;Z)V"
        }
    .end annotation

    .line 555
    .local p4, "supportedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    .line 557
    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mName:Ljava/lang/String;

    .line 558
    iput p3, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mVersion:I

    .line 559
    iput-object p4, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    .line 560
    iput-boolean p5, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    .line 561
    return-void
.end method

.method static fromPath(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .line 463
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 465
    .local v0, "file":Ljava/io/File;
    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 467
    .local v1, "modelFd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImplNative;->getVersion(I)I

    move-result v7

    .line 468
    .local v7, "version":I
    nop

    .line 469
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImplNative;->getLocales(I)Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "supportedLocalesStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    const-string v4, "androidtc"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/view/textclassifier/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    return-object v2

    .line 474
    :cond_0
    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 475
    .local v9, "languageIndependent":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    .line 476
    .local v10, "supportedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v8, v4, v6

    .line 477
    .local v8, "langTag":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v8    # "langTag":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl;->access$000(Landroid/os/ParcelFileDescriptor;)V

    .line 480
    new-instance v11, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v4, v11

    move-object v5, p0

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 482
    .end local v1    # "modelFd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "supportedLocalesStr":Ljava/lang/String;
    .end local v7    # "version":I
    .end local v9    # "languageIndependent":Z
    .end local v10    # "supportedLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v3, "androidtc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to peek "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/view/textclassifier/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 534
    if-ne p0, p1, :cond_0

    .line 535
    const/4 v0, 0x1

    return v0

    .line 536
    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 539
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 540
    .local v0, "otherModel":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    iget-object v2, v0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 537
    .end local v0    # "otherModel":Landroid/view/textclassifier/TextClassifierImpl$ModelFile;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getPath()Ljava/lang/String;
    .locals 1

    .line 490
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method getSupportedLocales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getVersion()I
    .locals 1

    .line 500
    iget v0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mVersion:I

    return v0
.end method

.method isAnyLanguageSupported(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale$LanguageRange;",
            ">;)Z"
        }
    .end annotation

    .line 505
    .local p1, "languageRanges":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale$LanguageRange;>;"
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-static {p1, v0}, Ljava/util/Locale;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

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

.method public isPreferredTo(Landroid/view/textclassifier/TextClassifierImpl$ModelFile;)Z
    .locals 3
    .param p1, "model"    # Landroid/view/textclassifier/TextClassifierImpl$ModelFile;

    .line 515
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 516
    return v0

    .line 521
    :cond_0
    iget-boolean v1, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mLanguageIndependent:Z

    if-eqz v1, :cond_1

    .line 522
    return v0

    .line 526
    :cond_1
    invoke-virtual {p0}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->getVersion()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 527
    return v0

    .line 529
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 546
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 547
    .local v0, "localesJoiner":Ljava/util/StringJoiner;
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mSupportedLocales:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 548
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 549
    .end local v2    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 550
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ModelFile { path=%s name=%s version=%d locales=%s }"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mPath:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Landroid/view/textclassifier/TextClassifierImpl$ModelFile;->mVersion:I

    .line 551
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 550
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
