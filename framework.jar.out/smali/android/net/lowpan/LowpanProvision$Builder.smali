.class public Landroid/net/lowpan/LowpanProvision$Builder;
.super Ljava/lang/Object;
.source "LowpanProvision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanProvision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final provision:Landroid/net/lowpan/LowpanProvision;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/net/lowpan/LowpanProvision;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanProvision;-><init>(Landroid/net/lowpan/LowpanProvision$1;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/lowpan/LowpanProvision;
    .locals 1

    .line 51
    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    return-object v0
.end method

.method public setLowpanCredential(Landroid/net/lowpan/LowpanCredential;)Landroid/net/lowpan/LowpanProvision$Builder;
    .locals 1
    .param p1, "credential"    # Landroid/net/lowpan/LowpanCredential;

    .line 46
    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanProvision;->access$202(Landroid/net/lowpan/LowpanProvision;Landroid/net/lowpan/LowpanCredential;)Landroid/net/lowpan/LowpanCredential;

    .line 47
    return-object p0
.end method

.method public setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanProvision$Builder;
    .locals 1
    .param p1, "identity"    # Landroid/net/lowpan/LowpanIdentity;

    .line 41
    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanProvision;->access$102(Landroid/net/lowpan/LowpanProvision;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;

    .line 42
    return-object p0
.end method
