.class public Landroid/text/BoringLayout$Metrics;
.super Landroid/graphics/Paint$FontMetricsInt;
.source "BoringLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BoringLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metrics"
.end annotation


# instance fields
.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 464
    invoke-direct {p0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/text/BoringLayout$Metrics;)V
    .locals 0
    .param p0, "x0"    # Landroid/text/BoringLayout$Metrics;

    .line 464
    invoke-direct {p0}, Landroid/text/BoringLayout$Metrics;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 472
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout$Metrics;->top:I

    .line 473
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->bottom:I

    .line 474
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->ascent:I

    .line 475
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->descent:I

    .line 476
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 477
    iput v0, p0, Landroid/text/BoringLayout$Metrics;->leading:I

    .line 478
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/graphics/Paint$FontMetricsInt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
