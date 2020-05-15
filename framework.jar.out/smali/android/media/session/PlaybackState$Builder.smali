.class public final Landroid/media/session/PlaybackState$Builder;
.super Ljava/lang/Object;
.source "PlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/PlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActions:J

.field private mActiveItemId:J

.field private mBufferedPosition:J

.field private final mCustomActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/PlaybackState$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorMessage:Ljava/lang/CharSequence;

.field private mExtras:Landroid/os/Bundle;

.field private mPosition:J

.field private mSpeed:F

.field private mState:I

.field private mUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    .line 827
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 834
    return-void
.end method

.method public constructor <init>(Landroid/media/session/PlaybackState;)V
    .locals 2
    .param p1, "from"    # Landroid/media/session/PlaybackState;

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    .line 827
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 843
    if-nez p1, :cond_0

    .line 844
    return-void

    .line 846
    :cond_0
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$300(Landroid/media/session/PlaybackState;)I

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState$Builder;->mState:I

    .line 847
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$400(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    .line 848
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$500(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    .line 849
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$600(Landroid/media/session/PlaybackState;)F

    move-result v0

    iput v0, p0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    .line 850
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$700(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    .line 851
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$800(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$800(Landroid/media/session/PlaybackState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 854
    :cond_1
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$900(Landroid/media/session/PlaybackState;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 855
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$1000(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    .line 856
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$1100(Landroid/media/session/PlaybackState;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 857
    invoke-static {p1}, Landroid/media/session/PlaybackState;->access$1200(Landroid/media/session/PlaybackState;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    .line 858
    return-void
.end method


# virtual methods
.method public addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;
    .locals 2
    .param p1, "customAction"    # Landroid/media/session/PlaybackState$CustomAction;

    .line 1011
    if-eqz p1, :cond_0

    .line 1015
    iget-object v0, p0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1016
    return-object p0

    .line 1012
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You may not add a null CustomAction to PlaybackState."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addCustomAction(Ljava/lang/String;Ljava/lang/String;I)Landroid/media/session/PlaybackState$Builder;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .line 996
    new-instance v6, Landroid/media/session/PlaybackState$CustomAction;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/session/PlaybackState$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;Landroid/media/session/PlaybackState$1;)V

    invoke-virtual {p0, v6}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Landroid/media/session/PlaybackState;
    .locals 19

    .line 1075
    move-object/from16 v0, p0

    new-instance v18, Landroid/media/session/PlaybackState;

    iget v2, v0, Landroid/media/session/PlaybackState$Builder;->mState:I

    iget-wide v3, v0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    iget-wide v5, v0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    iget v7, v0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    iget-wide v8, v0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    iget-wide v10, v0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    iget-object v12, v0, Landroid/media/session/PlaybackState$Builder;->mCustomActions:Ljava/util/List;

    iget-wide v13, v0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    iget-object v15, v0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    const/16 v17, 0x0

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v17}, Landroid/media/session/PlaybackState;-><init>(IJJFJJLjava/util/List;JLjava/lang/CharSequence;Landroid/os/Bundle;Landroid/media/session/PlaybackState$1;)V

    return-object v18
.end method

.method public setActions(J)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "actions"    # J

    .line 971
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mActions:J

    .line 972
    return-object p0
.end method

.method public setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "id"    # J

    .line 1041
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mActiveItemId:J

    .line 1042
    return-object p0
.end method

.method public setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "bufferedPosition"    # J

    .line 1029
    iput-wide p1, p0, Landroid/media/session/PlaybackState$Builder;->mBufferedPosition:J

    .line 1030
    return-object p0
.end method

.method public setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 1053
    iput-object p1, p0, Landroid/media/session/PlaybackState$Builder;->mErrorMessage:Ljava/lang/CharSequence;

    .line 1054
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1064
    iput-object p1, p0, Landroid/media/session/PlaybackState$Builder;->mExtras:Landroid/os/Bundle;

    .line 1065
    return-object p0
.end method

.method public setState(IJF)Landroid/media/session/PlaybackState$Builder;
    .locals 7
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F

    .line 940
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setState(IJFJ)Landroid/media/session/PlaybackState$Builder;
    .locals 0
    .param p1, "state"    # I
    .param p2, "position"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "updateTime"    # J

    .line 899
    iput p1, p0, Landroid/media/session/PlaybackState$Builder;->mState:I

    .line 900
    iput-wide p2, p0, Landroid/media/session/PlaybackState$Builder;->mPosition:J

    .line 901
    iput-wide p5, p0, Landroid/media/session/PlaybackState$Builder;->mUpdateTime:J

    .line 902
    iput p4, p0, Landroid/media/session/PlaybackState$Builder;->mSpeed:F

    .line 903
    return-object p0
.end method
