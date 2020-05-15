.class Landroid/media/ExifInterface$Rational;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rational"
.end annotation


# instance fields
.field public final denominator:J

.field public final numerator:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 3
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 562
    iput-wide v0, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    .line 563
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    .line 564
    return-void

    .line 566
    :cond_0
    iput-wide p1, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    .line 567
    iput-wide p3, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    .line 568
    return-void
.end method

.method synthetic constructor <init>(JJLandroid/media/ExifInterface$1;)V
    .locals 0
    .param p1, "x0"    # J
    .param p3, "x1"    # J
    .param p5, "x2"    # Landroid/media/ExifInterface$1;

    .line 555
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/ExifInterface$Rational;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public calculate()D
    .locals 4

    .line 576
    iget-wide v0, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    long-to-double v0, v0

    iget-wide v2, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
