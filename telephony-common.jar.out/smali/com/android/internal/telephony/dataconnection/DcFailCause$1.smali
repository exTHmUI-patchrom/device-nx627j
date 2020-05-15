.class Lcom/android/internal/telephony/dataconnection/DcFailCause$1;
.super Ljava/util/HashSet;
.source "DcFailCause.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcFailCause;->isPermanentFailure(Landroid/content/Context;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcFailCause;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcFailCause;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 206
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause$1;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method
