.class final Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;
.super Landroid/os/Handler;
.source "NBAmbientLuxDataCollecter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/util/NBAmbientLuxDataCollecter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AmbientLuxDataHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/util/NBAmbientLuxDataCollecter;


# direct methods
.method public constructor <init>(Lnubia/util/NBAmbientLuxDataCollecter;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 111
    iput-object p1, p0, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    .line 112
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 126
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 127
    .local v0, "ambientLux":F
    iget-object v1, p0, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-static {v1}, Lnubia/util/NBAmbientLuxDataCollecter;->access$200(Lnubia/util/NBAmbientLuxDataCollecter;)Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;

    move-result-object v1

    iget-object v2, p0, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-static {v2}, Lnubia/util/NBAmbientLuxDataCollecter;->access$000(Lnubia/util/NBAmbientLuxDataCollecter;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxCallback;->updateAmbientLux(Ljava/lang/String;F)V

    .line 128
    goto :goto_1

    .line 119
    .end local v0    # "ambientLux":F
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lnubia/util/NBAmbientLuxDataCollecter;->access$002(Lnubia/util/NBAmbientLuxDataCollecter;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lnubia/util/NBAmbientLuxDataCollecter$AmbientLuxDataHandler;->this$0:Lnubia/util/NBAmbientLuxDataCollecter;

    invoke-static {v1, v0}, Lnubia/util/NBAmbientLuxDataCollecter;->access$100(Lnubia/util/NBAmbientLuxDataCollecter;Z)V

    .line 122
    nop

    .line 131
    .end local v0    # "enable":Z
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
