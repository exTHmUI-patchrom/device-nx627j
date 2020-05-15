.class final enum Landroid/util/DataUnit$2;
.super Landroid/util/DataUnit;
.source "DataUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/DataUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/DataUnit;-><init>(Ljava/lang/String;ILandroid/util/DataUnit$1;)V

    return-void
.end method


# virtual methods
.method public toBytes(J)J
    .locals 2
    .param p1, "v"    # J

    .line 37
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    return-wide v0
.end method
