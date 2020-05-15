.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$AHHTCREuropaUGilzG-tndQCCSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/IStopUserCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/IStopUserCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$AHHTCREuropaUGilzG-tndQCCSM;->f$0:Landroid/app/IStopUserCallback;

    iput p2, p0, Lcom/android/server/am/-$$Lambda$UserController$AHHTCREuropaUGilzG-tndQCCSM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$AHHTCREuropaUGilzG-tndQCCSM;->f$0:Landroid/app/IStopUserCallback;

    iget v1, p0, Lcom/android/server/am/-$$Lambda$UserController$AHHTCREuropaUGilzG-tndQCCSM;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/am/UserController;->lambda$stopSingleUserLU$2(Landroid/app/IStopUserCallback;I)V

    return-void
.end method
