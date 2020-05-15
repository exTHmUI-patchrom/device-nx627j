.class public final synthetic Landroid/app/-$$Lambda$SharedPreferencesImpl$EditorImpl$3CAjkhzA131V3V-sLfP2uy0FWZ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/app/SharedPreferencesImpl$EditorImpl;

.field private final synthetic f$1:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;


# direct methods
.method public synthetic constructor <init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/-$$Lambda$SharedPreferencesImpl$EditorImpl$3CAjkhzA131V3V-sLfP2uy0FWZ0;->f$0:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/-$$Lambda$SharedPreferencesImpl$EditorImpl$3CAjkhzA131V3V-sLfP2uy0FWZ0;->f$1:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/app/-$$Lambda$SharedPreferencesImpl$EditorImpl$3CAjkhzA131V3V-sLfP2uy0FWZ0;->f$0:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iget-object v1, p0, Landroid/app/-$$Lambda$SharedPreferencesImpl$EditorImpl$3CAjkhzA131V3V-sLfP2uy0FWZ0;->f$1:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    invoke-static {v0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->lambda$notifyListeners$0(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method
