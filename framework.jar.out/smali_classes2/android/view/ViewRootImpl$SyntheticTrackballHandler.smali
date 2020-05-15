.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 5870
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5871
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 5872
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 5978
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 5983
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    .line 5984
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 5986
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    .line 5877
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 5878
    .local v14, "curTime":J
    iget-wide v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v3, 0xfa

    add-long/2addr v1, v3

    cmp-long v1, v1, v14

    if-gez v1, :cond_0

    .line 5881
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5882
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5883
    iput-wide v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 5886
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    .line 5887
    .local v16, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v17

    .line 5888
    .local v17, "metaState":I
    const/4 v13, 0x2

    packed-switch v16, :pswitch_data_0

    .line 5913
    move-wide/from16 v23, v14

    .end local v14    # "curTime":J
    .local v23, "curTime":J
    goto/16 :goto_0

    .line 5898
    .end local v23    # "curTime":J
    .restart local v14    # "curTime":J
    :pswitch_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5899
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v13}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5900
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x400

    const/16 v20, 0x101

    move-object v1, v11

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v9, v17

    move-object/from16 v21, v11

    move/from16 v11, v18

    move-object/from16 v22, v12

    move/from16 v12, v19

    move-wide/from16 v23, v14

    move v14, v13

    move/from16 v13, v20

    .end local v14    # "curTime":J
    .restart local v23    # "curTime":J
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v21

    move-object/from16 v1, v22

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    .line 5890
    .end local v23    # "curTime":J
    .restart local v14    # "curTime":J
    :pswitch_1
    move-wide/from16 v23, v14

    move v14, v13

    .end local v14    # "curTime":J
    .restart local v23    # "curTime":J
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5891
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v1, v14}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5892
    iget-object v15, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x400

    const/16 v18, 0x101

    move-object v1, v13

    move-wide/from16 v2, v23

    move-wide/from16 v4, v23

    move/from16 v9, v17

    move-object v14, v13

    move/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v15, v14}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5896
    nop

    .line 5913
    :goto_0
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "X"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v14

    .line 5914
    .local v14, "xOff":F
    iget-object v1, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const-string v5, "Y"

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v15

    .line 5922
    .local v15, "yOff":F
    const/4 v1, 0x0

    .line 5923
    .local v1, "keycode":I
    const/4 v2, 0x0

    .line 5924
    .local v2, "movement":I
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5925
    .local v3, "accel":F
    cmpl-float v4, v14, v15

    if-lez v4, :cond_3

    .line 5926
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    .line 5927
    if-eqz v2, :cond_2

    .line 5928
    if-lez v2, :cond_1

    const/16 v4, 0x16

    goto :goto_1

    .line 5929
    :cond_1
    const/16 v4, 0x15

    :goto_1
    move v1, v4

    .line 5930
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5931
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 5943
    .end local v1    # "keycode":I
    .end local v3    # "accel":F
    .local v18, "keycode":I
    .local v19, "accel":F
    :cond_2
    :goto_2
    move/from16 v18, v1

    move/from16 v19, v3

    goto :goto_4

    .line 5933
    .end local v18    # "keycode":I
    .end local v19    # "accel":F
    .restart local v1    # "keycode":I
    .restart local v3    # "accel":F
    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    if-lez v4, :cond_2

    .line 5934
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v2

    .line 5935
    if-eqz v2, :cond_2

    .line 5936
    if-lez v2, :cond_4

    const/16 v4, 0x14

    goto :goto_3

    .line 5937
    :cond_4
    const/16 v4, 0x13

    :goto_3
    move v1, v4

    .line 5938
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v3, v4, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5939
    iget-object v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto :goto_2

    .line 5943
    .end local v1    # "keycode":I
    .end local v3    # "accel":F
    .restart local v18    # "keycode":I
    .restart local v19    # "accel":F
    :goto_4
    if-eqz v18, :cond_8

    .line 5944
    if-gez v2, :cond_5

    neg-int v2, v2

    .line 5945
    :cond_5
    int-to-float v1, v2

    mul-float v1, v1, v19

    float-to-int v13, v1

    .line 5949
    .local v13, "accelMovement":I
    if-le v13, v2, :cond_6

    .line 5952
    add-int/lit8 v20, v2, -0x1

    .line 5953
    .end local v2    # "movement":I
    .local v20, "movement":I
    sub-int v21, v13, v20

    .line 5954
    .local v21, "repeatCount":I
    iget-object v12, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v11, Landroid/view/KeyEvent;

    const/4 v6, 0x2

    const/4 v10, -0x1

    const/16 v22, 0x0

    const/16 v25, 0x400

    const/16 v26, 0x101

    move-object v1, v11

    move-wide/from16 v2, v23

    move-wide/from16 v4, v23

    move/from16 v7, v18

    move/from16 v8, v21

    move/from16 v9, v17

    move-object/from16 v27, v11

    move/from16 v11, v22

    move-object/from16 v28, v12

    move/from16 v12, v25

    move/from16 v22, v13

    move/from16 v13, v26

    .end local v13    # "accelMovement":I
    .local v22, "accelMovement":I
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5959
    .end local v21    # "repeatCount":I
    move/from16 v2, v20

    move-wide/from16 v3, v23

    goto :goto_5

    .end local v20    # "movement":I
    .end local v22    # "accelMovement":I
    .restart local v2    # "movement":I
    .restart local v13    # "accelMovement":I
    :cond_6
    move/from16 v22, v13

    move-wide/from16 v3, v23

    .end local v13    # "accelMovement":I
    .end local v23    # "curTime":J
    .local v3, "curTime":J
    .restart local v22    # "accelMovement":I
    :goto_5
    if-lez v2, :cond_7

    .line 5962
    add-int/lit8 v20, v2, -0x1

    .line 5963
    .end local v2    # "movement":I
    .restart local v20    # "movement":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v23

    .line 5964
    .end local v3    # "curTime":J
    .restart local v23    # "curTime":J
    iget-object v13, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v12, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v21, 0x400

    const/16 v25, 0x101

    move-object v1, v12

    move-wide/from16 v2, v23

    move-wide/from16 v4, v23

    move/from16 v7, v18

    move/from16 v9, v17

    move-object/from16 v29, v12

    move/from16 v12, v21

    move/from16 v30, v14

    move-object v14, v13

    move/from16 v13, v25

    .end local v14    # "xOff":F
    .local v30, "xOff":F
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v1, v29

    invoke-virtual {v14, v1}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5968
    iget-object v14, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/16 v12, 0x400

    const/16 v21, 0x101

    move-object v1, v13

    move/from16 v31, v15

    move-object v15, v13

    move/from16 v13, v21

    .end local v15    # "yOff":F
    .local v31, "yOff":F
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v14, v15}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5959
    move/from16 v2, v20

    move-wide/from16 v3, v23

    move/from16 v14, v30

    move/from16 v15, v31

    goto :goto_5

    .line 5973
    .end local v20    # "movement":I
    .end local v23    # "curTime":J
    .end local v30    # "xOff":F
    .end local v31    # "yOff":F
    .restart local v2    # "movement":I
    .restart local v3    # "curTime":J
    .restart local v14    # "xOff":F
    .restart local v15    # "yOff":F
    :cond_7
    move/from16 v30, v14

    move/from16 v31, v15

    .end local v14    # "xOff":F
    .end local v15    # "yOff":F
    .restart local v30    # "xOff":F
    .restart local v31    # "yOff":F
    iput-wide v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .end local v22    # "accelMovement":I
    goto :goto_6

    .line 5975
    .end local v3    # "curTime":J
    .end local v30    # "xOff":F
    .end local v31    # "yOff":F
    .restart local v14    # "xOff":F
    .restart local v15    # "yOff":F
    .restart local v23    # "curTime":J
    :cond_8
    move/from16 v30, v14

    move/from16 v31, v15

    move-wide/from16 v3, v23

    .end local v14    # "xOff":F
    .end local v15    # "yOff":F
    .end local v23    # "curTime":J
    .restart local v3    # "curTime":J
    .restart local v30    # "xOff":F
    .restart local v31    # "yOff":F
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
