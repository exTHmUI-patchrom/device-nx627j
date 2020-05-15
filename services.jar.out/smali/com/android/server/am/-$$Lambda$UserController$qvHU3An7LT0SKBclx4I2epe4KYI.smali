.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$qvHU3An7LT0SKBclx4I2epe4KYI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/UserController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$qvHU3An7LT0SKBclx4I2epe4KYI;->f$0:Lcom/android/server/am/UserController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$qvHU3An7LT0SKBclx4I2epe4KYI;->f$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->lambda$scheduleStartProfiles$5(Lcom/android/server/am/UserController;)V

    return-void
.end method
