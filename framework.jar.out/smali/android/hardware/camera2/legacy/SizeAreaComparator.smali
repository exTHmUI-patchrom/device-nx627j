.class public Landroid/hardware/camera2/legacy/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SizeAreaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 68
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v0, "sizes must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 11
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "size2"    # Landroid/hardware/Camera$Size;

    .line 39
    const-string/jumbo v0, "size must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v0, "size2 must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-long v0, v0

    .line 47
    .local v0, "width":J
    iget v2, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-long v2, v2

    .line 48
    .local v2, "width2":J
    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-long v4, v4

    mul-long/2addr v4, v0

    .line 49
    .local v4, "area":J
    iget v6, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-long v6, v6

    mul-long/2addr v6, v2

    .line 51
    .local v6, "area2":J
    cmp-long v8, v4, v6

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-nez v8, :cond_2

    .line 52
    cmp-long v8, v0, v2

    if-lez v8, :cond_1

    move v9, v10

    nop

    :cond_1
    return v9

    .line 55
    :cond_2
    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    move v9, v10

    nop

    :cond_3
    return v9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result p1

    return p1
.end method
