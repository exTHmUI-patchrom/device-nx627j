.class final Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "displayManagerInternal"    # Landroid/hardware/display/DisplayManagerInternal;
    .param p2, "displayId"    # I
    .param p3, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 735
    iput-object p1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 736
    iput p2, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    .line 737
    iput-object p3, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 738
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 739
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 742
    monitor-enter p0

    .line 743
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 744
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 746
    return-void

    .line 744
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisplayTransaction()V
    .locals 6

    .line 750
    monitor-enter p0

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 752
    monitor-exit p0

    return-void

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 756
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 771
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v5, v5

    invoke-virtual {v1, v5, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 772
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v3, v2, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 766
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v3, v3

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v3, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 768
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v4, v4, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 769
    goto :goto_0

    .line 762
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 763
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 764
    goto :goto_0

    .line 758
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v4, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 759
    iget-object v1, p0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v4, v4, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 760
    nop

    .line 775
    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :goto_0
    monitor-exit p0

    .line 776
    return-void

    .line 775
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
