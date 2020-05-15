.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackQueue"
.end annotation


# instance fields
.field private mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor <init>(Landroid/view/Choreographer;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/Choreographer;
    .param p2, "x1"    # Landroid/view/Choreographer$1;

    .line 1017
    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/view/Choreographer;->access$600(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    .line 1046
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1047
    .local v1, "entry":Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_0

    .line 1048
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1049
    return-void

    .line 1051
    :cond_0
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 1052
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1053
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1054
    return-void

    .line 1056
    :cond_1
    :goto_0
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v2, :cond_3

    .line 1057
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v2, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    .line 1058
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1059
    goto :goto_1

    .line 1061
    :cond_2
    iget-object v1, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0

    .line 1063
    :cond_3
    :goto_1
    iput-object v0, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1064
    return-void
.end method

.method public extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .locals 6
    .param p1, "now"    # J

    .line 1025
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1026
    .local v0, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-wide v2, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    goto :goto_2

    .line 1030
    :cond_0
    move-object v2, v0

    .line 1031
    .local v2, "last":Landroid/view/Choreographer$CallbackRecord;
    iget-object v3, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1032
    .local v3, "next":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v3, :cond_2

    .line 1033
    iget-wide v4, v3, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1

    .line 1034
    iput-object v1, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1035
    goto :goto_1

    .line 1037
    :cond_1
    move-object v2, v3

    .line 1038
    iget-object v3, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_0

    .line 1040
    :cond_2
    :goto_1
    iput-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1041
    return-object v0

    .line 1027
    .end local v2    # "last":Landroid/view/Choreographer$CallbackRecord;
    .end local v3    # "next":Landroid/view/Choreographer$CallbackRecord;
    :cond_3
    :goto_2
    return-object v1
.end method

.method public hasDueCallbacksLocked(J)Z
    .locals 2
    .param p1, "now"    # J

    .line 1021
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "token"    # Ljava/lang/Object;

    .line 1067
    const/4 v0, 0x0

    .line 1068
    .local v0, "predecessor":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .local v1, "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_0
    if-eqz v1, :cond_4

    .line 1069
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1070
    .local v2, "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz p1, :cond_0

    iget-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    if-ne v3, p1, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    if-ne v3, p2, :cond_1

    goto :goto_1

    .line 1079
    :cond_1
    move-object v0, v1

    goto :goto_3

    .line 1072
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 1073
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_2

    .line 1075
    :cond_3
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1077
    :goto_2
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v3, v1}, Landroid/view/Choreographer;->access$700(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    .line 1081
    :goto_3
    move-object v1, v2

    .line 1082
    .end local v2    # "next":Landroid/view/Choreographer$CallbackRecord;
    goto :goto_0

    .line 1083
    .end local v1    # "callback":Landroid/view/Choreographer$CallbackRecord;
    :cond_4
    return-void
.end method
