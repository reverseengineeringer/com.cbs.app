.class public final Lcom/adobe/mobile/g$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/mobile/g;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/adobe/mobile/g;Z)V
    .locals 1

    .prologue
    .line 618
    iput-object p1, p0, Lcom/adobe/mobile/g$b;->a:Lcom/adobe/mobile/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/mobile/g$b;->b:Z

    .line 619
    iput-boolean p2, p0, Lcom/adobe/mobile/g$b;->b:Z

    .line 620
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 624
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/adobe/mobile/ai;->a(Z)V

    .line 625
    const-string v0, "Analytics - Referrer timeout has expired without referrer data"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/adobe/mobile/g$b;->a:Lcom/adobe/mobile/g;

    iget-boolean v1, p0, Lcom/adobe/mobile/g$b;->b:Z

    invoke-virtual {v0, v1}, Lcom/adobe/mobile/g;->a(Z)V

    .line 627
    return-void
.end method
