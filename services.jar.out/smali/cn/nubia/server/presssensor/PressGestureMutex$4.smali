.class Lcn/nubia/server/presssensor/PressGestureMutex$4;
.super Landroid/telephony/PhoneStateListener;
.source "PressGestureMutex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/presssensor/PressGestureMutex;-><init>(Landroid/content/Context;Lcn/nubia/server/presssensor/PressGestureSettings;Lcn/nubia/server/presssensor/PressSensorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/presssensor/PressGestureMutex;


# direct methods
.method constructor <init>(Lcn/nubia/server/presssensor/PressGestureMutex;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/presssensor/PressGestureMutex;

    .line 125
    iput-object p1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$4;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 128
    const-string v0, "PressSensorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Mutex] call state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/nubia/server/presssensor/PressGestureMutex$4;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$702(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/presssensor/PressGestureMutex$4;->this$0:Lcn/nubia/server/presssensor/PressGestureMutex;

    invoke-static {v1, v0}, Lcn/nubia/server/presssensor/PressGestureMutex;->access$702(Lcn/nubia/server/presssensor/PressGestureMutex;Z)Z

    .line 132
    nop

    .line 137
    :goto_0
    return-void
.end method
