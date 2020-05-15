.class public final Landroid/print/PrinterInfo$Builder;
.super Ljava/lang/Object;
.source "PrinterInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private mCustomPrinterIconGen:I

.field private mDescription:Ljava/lang/String;

.field private mHasCustomPrinterIcon:Z

.field private mIconResourceId:I

.field private mInfoIntent:Landroid/app/PendingIntent;

.field private mName:Ljava/lang/String;

.field private mPrinterId:Landroid/print/PrinterId;

.field private mStatus:I


# direct methods
.method public constructor <init>(Landroid/print/PrinterId;Ljava/lang/String;I)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "status"    # I

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$000(Landroid/print/PrinterId;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    .line 425
    invoke-static {p2}, Landroid/print/PrinterInfo;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    .line 426
    invoke-static {p3}, Landroid/print/PrinterInfo;->access$200(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    .line 427
    return-void
.end method

.method public constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 1
    .param p1, "other"    # Landroid/print/PrinterInfo;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$300(Landroid/print/PrinterInfo;)Landroid/print/PrinterId;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    .line 436
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$400(Landroid/print/PrinterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    .line 437
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$500(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    .line 438
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$600(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    .line 439
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$700(Landroid/print/PrinterInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    .line 440
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$800(Landroid/print/PrinterInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    .line 441
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$900(Landroid/print/PrinterInfo;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    .line 442
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$1000(Landroid/print/PrinterInfo;)Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 443
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$1100(Landroid/print/PrinterInfo;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    .line 444
    return-void
.end method


# virtual methods
.method public build()Landroid/print/PrinterInfo;
    .locals 12

    .line 547
    new-instance v11, Landroid/print/PrinterInfo;

    iget-object v1, p0, Landroid/print/PrinterInfo$Builder;->mPrinterId:Landroid/print/PrinterId;

    iget-object v2, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    iget v3, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    iget v4, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    iget-boolean v5, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    iget-object v6, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    iget-object v7, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget v9, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterId;Ljava/lang/String;IIZLjava/lang/String;Landroid/app/PendingIntent;Landroid/print/PrinterCapabilitiesInfo;ILandroid/print/PrinterInfo$1;)V

    return-object v11
.end method

.method public incCustomPrinterIconGen()Landroid/print/PrinterInfo$Builder;
    .locals 1

    .line 561
    iget v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mCustomPrinterIconGen:I

    .line 562
    return-object p0
.end method

.method public setCapabilities(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "capabilities"    # Landroid/print/PrinterCapabilitiesInfo;

    .line 537
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 538
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 514
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mDescription:Ljava/lang/String;

    .line 515
    return-object p0
.end method

.method public setHasCustomPrinterIcon(Z)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "hasCustomPrinterIcon"    # Z

    .line 490
    iput-boolean p1, p0, Landroid/print/PrinterInfo$Builder;->mHasCustomPrinterIcon:Z

    .line 491
    return-object p0
.end method

.method public setIconResourceId(I)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "iconResourceId"    # I

    .line 469
    const-string v0, "iconResourceId can\'t be negative"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mIconResourceId:I

    .line 471
    return-object p0
.end method

.method public setInfoIntent(Landroid/app/PendingIntent;)Landroid/print/PrinterInfo$Builder;
    .locals 0
    .param p1, "infoIntent"    # Landroid/app/PendingIntent;

    .line 526
    iput-object p1, p0, Landroid/print/PrinterInfo$Builder;->mInfoIntent:Landroid/app/PendingIntent;

    .line 527
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 502
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo$Builder;->mName:Ljava/lang/String;

    .line 503
    return-object p0
.end method

.method public setStatus(I)Landroid/print/PrinterInfo$Builder;
    .locals 1
    .param p1, "status"    # I

    .line 456
    invoke-static {p1}, Landroid/print/PrinterInfo;->access$200(I)I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo$Builder;->mStatus:I

    .line 457
    return-object p0
.end method
