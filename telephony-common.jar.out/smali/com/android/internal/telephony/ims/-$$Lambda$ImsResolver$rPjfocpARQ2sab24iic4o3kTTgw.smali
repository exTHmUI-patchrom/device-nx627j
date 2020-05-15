.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$rPjfocpARQ2sab24iic4o3kTTgw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$rPjfocpARQ2sab24iic4o3kTTgw;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$rPjfocpARQ2sab24iic4o3kTTgw;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$getInfoByPackageName$2(Ljava/lang/String;Lcom/android/internal/telephony/ims/ImsResolver$ImsServiceInfo;)Z

    move-result p1

    return p1
.end method
