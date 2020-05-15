.class Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;
.super Landroid/content/BroadcastReceiver;
.source "DataCollectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;


# direct methods
.method constructor <init>(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    .line 174
    iput-object p1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 177
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$100(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V

    .line 181
    :cond_0
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 184
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    const-string/jumbo v3, "mobile_turn_off"

    invoke-interface {v2, v3, v1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "battery_level"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string/jumbo v2, "plug_type"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getPlugType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 199
    :try_start_1
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    const-string/jumbo v3, "start_charge"

    invoke-interface {v2, v3, v1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    goto :goto_1

    .line 200
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 207
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string v2, "battery_level"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v2, "battery_capacity"

    iget-object v3, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v3}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$200(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/server/appmgmt/datacollection/DeviceInfoUtils;->getNeoCurrentBatteryCapacity()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 211
    :try_start_2
    iget-object v2, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v2}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$000(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;

    move-result-object v2

    const-string v3, "end_charge"

    invoke-interface {v2, v3, v1}, Lcn/nubia/processmanager/datacollection/IDataCollectionInterface;->updateData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 214
    goto :goto_2

    .line 212
    :catch_2
    move-exception v2

    .line 213
    .restart local v2    # "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 217
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_2
    const-string v1, "android.intent.action.DEVICE_INITIALIZATION_WIZARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    const-string v1, "DataCollectionController"

    const-string/jumbo v2, "updateData event_first_boot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$300(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V

    .line 220
    iget-object v1, p0, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController$2;->this$0:Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;

    invoke-static {v1}, Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;->access$400(Lcn/nubia/server/appmgmt/datacollection/DataCollectionController;)V

    .line 222
    :cond_4
    return-void
.end method
