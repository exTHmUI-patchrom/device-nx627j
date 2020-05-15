.class public final synthetic Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$pNx4XUM9FmR6cV_MCAGiEt8F4pg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$pNx4XUM9FmR6cV_MCAGiEt8F4pg;->f$0:Lcom/android/internal/telephony/ims/ImsResolver;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/-$$Lambda$ImsResolver$pNx4XUM9FmR6cV_MCAGiEt8F4pg;->f$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/ims/ImsResolver;->lambda$new$0(Lcom/android/internal/telephony/ims/ImsResolver;Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
