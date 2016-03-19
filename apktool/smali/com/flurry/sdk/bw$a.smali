.class final Lcom/flurry/sdk/bw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bw;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/bw;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/flurry/sdk/bw$a;->a:Lcom/flurry/sdk/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/bw;B)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/flurry/sdk/bw$a;-><init>(Lcom/flurry/sdk/bw;)V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/flurry/sdk/bw$a;->a:Lcom/flurry/sdk/bw;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/bw;->a(Lcom/flurry/sdk/bw;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/bw$a;->a:Lcom/flurry/sdk/bw;

    invoke-static {v0, p1, p2}, Lcom/flurry/sdk/bw;->b(Lcom/flurry/sdk/bw;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method
