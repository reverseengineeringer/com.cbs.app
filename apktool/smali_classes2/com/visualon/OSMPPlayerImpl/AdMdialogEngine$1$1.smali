.class Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->streamExpired(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    const-string v0, "@@@AdMdialogEngine"

    const-string v1, "streamExpired"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-void
.end method
