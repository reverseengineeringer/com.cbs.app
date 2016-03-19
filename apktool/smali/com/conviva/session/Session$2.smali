.class Lcom/conviva/session/Session$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/conviva/utils/CallableWithParameters$With1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/conviva/session/Session;->encodeAndPostHeartbeat(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/conviva/utils/CallableWithParameters$With1",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/conviva/session/Session;


# direct methods
.method constructor <init>(Lcom/conviva/session/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/conviva/session/Session$2;->this$0:Lcom/conviva/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic exec(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/conviva/session/Session$2;->exec(Ljava/lang/String;)V

    return-void
.end method

.method public exec(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/conviva/session/Session$2;->this$0:Lcom/conviva/session/Session;

    # invokes: Lcom/conviva/session/Session;->postHeartbeat(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/conviva/session/Session;->access$100(Lcom/conviva/session/Session;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/conviva/session/Session$2;->this$0:Lcom/conviva/session/Session;

    # getter for: Lcom/conviva/session/Session;->_utils:Lcom/conviva/utils/PlatformUtils;
    invoke-static {v1}, Lcom/conviva/session/Session;->access$200(Lcom/conviva/session/Session;)Lcom/conviva/utils/PlatformUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSON post error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/conviva/utils/PlatformUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
