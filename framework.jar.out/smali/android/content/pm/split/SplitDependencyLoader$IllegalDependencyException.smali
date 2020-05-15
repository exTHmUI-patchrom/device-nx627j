.class public Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
.super Ljava/lang/Exception;
.source "SplitDependencyLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/split/SplitDependencyLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IllegalDependencyException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Landroid/content/pm/split/SplitDependencyLoader$1;

    .line 137
    invoke-direct {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;)V

    return-void
.end method
