.class Lcom/android/internal/telephony/NitzStateMachine$1;
.super Ljava/lang/Object;
.source "NitzStateMachine.java"

# interfaces
.implements Lcom/android/internal/telephony/TimeServiceHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/NitzStateMachine;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/TimeServiceHelper;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/TimeZoneLookupHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NitzStateMachine;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NitzStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/NitzStateMachine;

    .line 173
    iput-object p1, p0, Lcom/android/internal/telephony/NitzStateMachine$1;->this$0:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeDetectionChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$1;->this$0:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/NitzStateMachine;->access$000(Lcom/android/internal/telephony/NitzStateMachine;)V

    .line 179
    :cond_0
    return-void
.end method

.method public onTimeZoneDetectionChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/NitzStateMachine$1;->this$0:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-static {v0}, Lcom/android/internal/telephony/NitzStateMachine;->access$100(Lcom/android/internal/telephony/NitzStateMachine;)V

    .line 186
    :cond_0
    return-void
.end method
