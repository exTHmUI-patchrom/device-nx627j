.class public Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/MetricsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogHistParms"
.end annotation


# instance fields
.field public b:I

.field public bb:[D

.field public m:I

.field public mLog:D

.field public n:I

.field public p:I

.field public s:I

.field public sbw:[D


# direct methods
.method public constructor <init>(IIIII)V
    .locals 8
    .param p1, "b"    # I
    .param p2, "p"    # I
    .param p3, "m"    # I
    .param p4, "s"    # I
    .param p5, "n"    # I

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->b:I

    .line 52
    iput p2, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->p:I

    .line 53
    iput p3, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->m:I

    .line 54
    iput p4, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->s:I

    .line 55
    iput p5, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->n:I

    .line 58
    int-to-double v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->mLog:D

    .line 59
    new-array v0, p5, [D

    iput-object v0, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->bb:[D

    .line 60
    new-array v0, p5, [D

    iput-object v0, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    .line 61
    iget-object v0, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->bb:[D

    add-int v1, p1, p2

    int-to-double v1, v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    int-to-double v1, p2

    int-to-double v4, p3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v1, v4

    int-to-double v4, p4

    div-double/2addr v1, v4

    aput-wide v1, v0, v3

    .line 63
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->bb:[D

    int-to-double v2, p3

    iget-object v4, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->bb:[D

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    int-to-double v6, p1

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    int-to-double v4, p1

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 65
    iget-object v1, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    int-to-double v2, p3

    iget-object v4, p0, Lcom/android/server/wifi/util/MetricsUtils$LogHistParms;->sbw:[D

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
