.class public Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AnswerToReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterfaceByte"
.end annotation


# instance fields
.field private mTA:Ljava/lang/Byte;

.field private mTB:Ljava/lang/Byte;

.field private mTC:Ljava/lang/Byte;

.field private mTD:Ljava/lang/Byte;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    .line 383
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 384
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 385
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    .line 386
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/AnswerToReset$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/AnswerToReset$1;

    .line 339
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Byte;Ljava/lang/Byte;Ljava/lang/Byte;Ljava/lang/Byte;)V
    .locals 0
    .param p1, "tA"    # Ljava/lang/Byte;
    .param p2, "tB"    # Ljava/lang/Byte;
    .param p3, "tC"    # Ljava/lang/Byte;
    .param p4, "tD"    # Ljava/lang/Byte;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    .line 391
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 392
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 393
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    .line 394
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 398
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 399
    return v0

    .line 401
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 404
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    .line 405
    .local v2, "ib":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 406
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 407
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTC()Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    .line 408
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 405
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 402
    .end local v2    # "ib":Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
    :cond_3
    :goto_1
    return v1
.end method

.method public getTA()Ljava/lang/Byte;
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    return-object v0
.end method

.method public getTB()Ljava/lang/Byte;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    return-object v0
.end method

.method public getTC()Ljava/lang/Byte;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    return-object v0
.end method

.method public getTD()Ljava/lang/Byte;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 413
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setTA(Ljava/lang/Byte;)V
    .locals 0
    .param p1, "tA"    # Ljava/lang/Byte;

    .line 366
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    .line 367
    return-void
.end method

.method public setTB(Ljava/lang/Byte;)V
    .locals 0
    .param p1, "tB"    # Ljava/lang/Byte;

    .line 370
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 371
    return-void
.end method

.method public setTC(Ljava/lang/Byte;)V
    .locals 0
    .param p1, "tC"    # Ljava/lang/Byte;

    .line 374
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 375
    return-void
.end method

.method public setTD(Ljava/lang/Byte;)V
    .locals 0
    .param p1, "tD"    # Ljava/lang/Byte;

    .line 378
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    .line 379
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 418
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 419
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    const-string v1, "TA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    const-string v1, "TB="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const-string v1, "TC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    const-string v1, "TD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
