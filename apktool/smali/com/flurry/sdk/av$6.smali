.class final Lcom/flurry/sdk/av$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/bd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/av;->a(Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/bd",
        "<",
        "Lcom/flurry/sdk/au;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/av;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/av;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/flurry/sdk/av$6;->a:Lcom/flurry/sdk/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/flurry/sdk/bb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/bb",
            "<",
            "Lcom/flurry/sdk/au;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lcom/flurry/sdk/au$a;

    invoke-direct {v0}, Lcom/flurry/sdk/au$a;-><init>()V

    return-object v0
.end method
