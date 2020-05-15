.class public Landroid/hardware/Camera$Coordinate;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Coordinate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/Camera;

.field public xCoordinate:I

.field public yCoordinate:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/Camera;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 2376
    iput-object p1, p0, Landroid/hardware/Camera$Coordinate;->this$0:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2377
    iput p2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    .line 2378
    iput p3, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    .line 2379
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2389
    instance-of v0, p1, Landroid/hardware/Camera$Coordinate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2390
    return v1

    .line 2392
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/hardware/Camera$Coordinate;

    .line 2393
    .local v0, "c":Landroid/hardware/Camera$Coordinate;
    iget v2, p0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    iget v3, v0, Landroid/hardware/Camera$Coordinate;->xCoordinate:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    iget v3, v0, Landroid/hardware/Camera$Coordinate;->yCoordinate:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method
