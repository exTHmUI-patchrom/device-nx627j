.class Lcn/nubia/server/appmgmt/EyeProtectionController$3;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "EyeProtectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/server/appmgmt/EyeProtectionController;->initCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/EyeProtectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/EyeProtectionController;

    .line 166
    iput-object p1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$400(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Available"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "EyeProtectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraAvailable: mCameraStates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$400(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",cameraId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x1

    .line 172
    .local v0, "isAvailable":Z
    const/4 v1, 0x0

    move v2, v1

    .line 172
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$400(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 173
    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$400(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Unavailable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 175
    goto :goto_1

    .line 172
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 179
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v2, v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$502(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z

    .line 180
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$600(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 181
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$700(Lcn/nubia/server/appmgmt/EyeProtectionController;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 188
    :cond_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1200(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v1

    .line 189
    .local v1, "recoverMode":I
    if-eq v1, v2, :cond_5

    .line 190
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string/jumbo v3, "onCameraAvailable mAodEnd"

    invoke-static {v2, v1, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 190
    .end local v1    # "recoverMode":I
    goto :goto_3

    .line 182
    :cond_3
    :goto_2
    iget-object v1, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$900(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v1

    .line 183
    .local v1, "backMode":I
    if-eq v1, v2, :cond_4

    .line 184
    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string/jumbo v4, "onCameraAvailable mAodStart"

    invoke-static {v3, v1, v4}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1000(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string/jumbo v4, "onCameraAvailable mAodStart"

    invoke-static {v3, v2, v4}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 187
    .end local v1    # "backMode":I
    :cond_4
    nop

    .line 195
    :cond_5
    :goto_3
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$400(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Unavailable"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v0, "EyeProtectionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraUnavailable: mCameraStates"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$400(Lcn/nubia/server/appmgmt/EyeProtectionController;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",cameraId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$502(Lcn/nubia/server/appmgmt/EyeProtectionController;Z)Z

    .line 202
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$600(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 203
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$700(Lcn/nubia/server/appmgmt/EyeProtectionController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$800(Lcn/nubia/server/appmgmt/EyeProtectionController;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$900(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    .line 211
    .local v0, "backMode":I
    if-eq v0, v1, :cond_3

    .line 212
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string/jumbo v3, "onCameraUnavailable"

    invoke-static {v2, v0, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1000(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 213
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string/jumbo v3, "onCameraUnavailable"

    invoke-static {v2, v1, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 213
    .end local v0    # "backMode":I
    goto :goto_1

    .line 204
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    invoke-static {v0}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$900(Lcn/nubia/server/appmgmt/EyeProtectionController;)I

    move-result v0

    .line 205
    .restart local v0    # "backMode":I
    if-eq v0, v1, :cond_2

    .line 206
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string/jumbo v3, "onCameraAvailable mAodStart"

    invoke-static {v2, v0, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1000(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcn/nubia/server/appmgmt/EyeProtectionController$3;->this$0:Lcn/nubia/server/appmgmt/EyeProtectionController;

    const-string/jumbo v3, "onCameraAvailable mAodStart"

    invoke-static {v2, v1, v3}, Lcn/nubia/server/appmgmt/EyeProtectionController;->access$1100(Lcn/nubia/server/appmgmt/EyeProtectionController;ILjava/lang/String;)V

    .line 209
    .end local v0    # "backMode":I
    :cond_2
    nop

    .line 217
    :cond_3
    :goto_1
    return-void
.end method
