.class Lcom/android/server/twilight/TwilightService$2;
.super Landroid/content/BroadcastReceiver;
.source "TwilightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/twilight/TwilightService;

    .line 174
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 177
    const-string v0, "TwilightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",clear night_display_inactived_manually flag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "night_display_inactived_manually"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$2;->this$0:Lcom/android/server/twilight/TwilightService;

    invoke-static {v0}, Lcom/android/server/twilight/TwilightService;->access$200(Lcom/android/server/twilight/TwilightService;)V

    .line 182
    return-void
.end method
