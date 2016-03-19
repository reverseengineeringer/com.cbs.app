.class final Lcom/urbanairship/p$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/p;->a(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/urbanairship/a;

.field final synthetic c:Lcom/urbanairship/p$a;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/urbanairship/p$2;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/urbanairship/p$2;->b:Lcom/urbanairship/a;

    iput-object p3, p0, Lcom/urbanairship/p$2;->c:Lcom/urbanairship/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 315
    iget-object v0, p0, Lcom/urbanairship/p$2;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/urbanairship/p$2;->b:Lcom/urbanairship/a;

    iget-object v2, p0, Lcom/urbanairship/p$2;->c:Lcom/urbanairship/p$a;

    invoke-static {v0, v1, v2}, Lcom/urbanairship/p;->b(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V

    .line 316
    return-void
.end method
