.class final Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/ser/PropertyFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->from(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 96
    return-void
.end method

.method public final depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    check-cast p1, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 89
    return-void
.end method

.method public final serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter$1;->val$src:Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    check-cast p4, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 82
    return-void
.end method
