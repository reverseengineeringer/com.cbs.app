.class final Lcom/nielsen/app/sdk/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nielsen/app/sdk/v;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nielsen/app/sdk/v;


# direct methods
.method constructor <init>(Lcom/nielsen/app/sdk/v;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/nielsen/app/sdk/v$1;->a:Lcom/nielsen/app/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/nielsen/app/sdk/v$1;->a:Lcom/nielsen/app/sdk/v;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/v;->a()Z

    .line 172
    return-void
.end method
