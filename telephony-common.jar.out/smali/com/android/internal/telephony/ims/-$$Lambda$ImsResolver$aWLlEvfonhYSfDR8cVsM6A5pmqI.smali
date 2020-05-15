.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$aWLlEvfonhYSfDR8cVsM6A5pmqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$aWLlEvfonhYSfDR8cVsM6A5pmqI;->f$0:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$aWLlEvfonhYSfDR8cVsM6A5pmqI;->f$0:Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getControllerByServiceInfo$1(Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;Lcom/android/internal/telephony/ims/ImsServiceController;)Z

    move-result p1

    return p1
.end method
