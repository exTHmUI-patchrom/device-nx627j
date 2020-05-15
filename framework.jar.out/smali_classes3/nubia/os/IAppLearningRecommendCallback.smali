.class public interface abstract Lnubia/os/IAppLearningRecommendCallback;
.super Ljava/lang/Object;
.source "IAppLearningRecommendCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/os/IAppLearningRecommendCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract updateAppLearningRecommend(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
