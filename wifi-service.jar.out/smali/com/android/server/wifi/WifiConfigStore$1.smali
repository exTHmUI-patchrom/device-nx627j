.class Lcom/android/server/wifi/WifiConfigStore$1;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;

    .line 122
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$1;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore$1;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->access$000(Lcom/android/server/wifi/WifiConfigStore;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "WifiConfigStore"

    const-string v2, "Buffered write failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
