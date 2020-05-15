.class Landroid/hardware/location/ActivityRecognitionHardware$SinkList;
.super Landroid/os/RemoteCallbackList;
.source "ActivityRecognitionHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ActivityRecognitionHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SinkList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/hardware/location/IActivityRecognitionHardwareSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ActivityRecognitionHardware;


# direct methods
.method private constructor <init>(Landroid/hardware/location/ActivityRecognitionHardware;)V
    .locals 0

    .line 231
    iput-object p1, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/location/ActivityRecognitionHardware;Landroid/hardware/location/ActivityRecognitionHardware$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/location/ActivityRecognitionHardware;
    .param p2, "x1"    # Landroid/hardware/location/ActivityRecognitionHardware$1;

    .line 231
    invoke-direct {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;-><init>(Landroid/hardware/location/ActivityRecognitionHardware;)V

    return-void
.end method

.method private disableActivityEventIfEnabled(II)V
    .locals 6
    .param p1, "activityType"    # I
    .param p2, "eventType"    # I

    .line 249
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0}, Landroid/hardware/location/ActivityRecognitionHardware;->access$400(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v0

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 250
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0, p1, p2}, Landroid/hardware/location/ActivityRecognitionHardware;->access$500(Landroid/hardware/location/ActivityRecognitionHardware;II)I

    move-result v0

    .line 254
    .local v0, "result":I
    iget-object v2, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v2}, Landroid/hardware/location/ActivityRecognitionHardware;->access$400(Landroid/hardware/location/ActivityRecognitionHardware;)[[I

    move-result-object v2

    aget-object v2, v2, p1

    const/4 v3, 0x0

    aput v3, v2, p2

    .line 255
    const-string v2, "DisableActivityEvent: activityType=%d, eventType=%d, result=%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    const/4 v1, 0x2

    .line 259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 255
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "message":Ljava/lang/String;
    const-string v2, "ActivityRecognitionHW"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/location/IActivityRecognitionHardwareSink;

    .line 234
    iget-object v0, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v0}, Landroid/hardware/location/ActivityRecognitionHardware;->access$100(Landroid/hardware/location/ActivityRecognitionHardware;)Landroid/hardware/location/ActivityRecognitionHardware$SinkList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->getRegisteredCallbackCount()I

    move-result v0

    .line 235
    .local v0, "callbackCount":I
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ActivityRecognitionHW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisteredCallbackCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    if-eqz v0, :cond_1

    .line 237
    return-void

    .line 241
    :cond_1
    const/4 v1, 0x0

    move v2, v1

    .local v2, "activity":I
    :goto_0
    iget-object v3, p0, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->this$0:Landroid/hardware/location/ActivityRecognitionHardware;

    invoke-static {v3}, Landroid/hardware/location/ActivityRecognitionHardware;->access$300(Landroid/hardware/location/ActivityRecognitionHardware;)I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 242
    move v3, v1

    .local v3, "event":I
    :goto_1
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 243
    invoke-direct {p0, v2, v3}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->disableActivityEventIfEnabled(II)V

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    .end local v3    # "event":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    .end local v2    # "activity":I
    :cond_3
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 231
    check-cast p1, Landroid/hardware/location/IActivityRecognitionHardwareSink;

    invoke-virtual {p0, p1}, Landroid/hardware/location/ActivityRecognitionHardware$SinkList;->onCallbackDied(Landroid/hardware/location/IActivityRecognitionHardwareSink;)V

    return-void
.end method
