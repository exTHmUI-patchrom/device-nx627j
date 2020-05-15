.class Lcom/android/internal/telephony/EcbmHandler$1;
.super Ljava/lang/Object;
.source "EcbmHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/EcbmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/EcbmHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/EcbmHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/EcbmHandler;

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/EcbmHandler$1;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/EcbmHandler$1;->this$0:Lcom/android/internal/telephony/EcbmHandler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/EcbmHandler;->exitEmergencyCallbackMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
