.class Landroid/util/Log$2;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/Log;->printCtaLog(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$msgs:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Landroid/util/Log$2;->val$msgs:[Ljava/lang/String;

    iput-object p2, p0, Landroid/util/Log$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 199
    iget-object v0, p0, Landroid/util/Log$2;->val$msgs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/util/Log$2;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->access$000([Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method
