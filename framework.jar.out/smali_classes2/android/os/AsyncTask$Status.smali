.class public final enum Landroid/os/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/os/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/AsyncTask$Status;

.field public static final enum FINISHED:Landroid/os/AsyncTask$Status;

.field public static final enum PENDING:Landroid/os/AsyncTask$Status;

.field public static final enum RUNNING:Landroid/os/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 271
    new-instance v0, Landroid/os/AsyncTask$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    .line 275
    new-instance v0, Landroid/os/AsyncTask$Status;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 279
    new-instance v0, Landroid/os/AsyncTask$Status;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/os/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    .line 267
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/AsyncTask$Status;

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Landroid/os/AsyncTask$Status;->$VALUES:[Landroid/os/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/AsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 267
    const-class v0, Landroid/os/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Landroid/os/AsyncTask$Status;
    .locals 1

    .line 267
    sget-object v0, Landroid/os/AsyncTask$Status;->$VALUES:[Landroid/os/AsyncTask$Status;

    invoke-virtual {v0}, [Landroid/os/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/AsyncTask$Status;

    return-object v0
.end method
