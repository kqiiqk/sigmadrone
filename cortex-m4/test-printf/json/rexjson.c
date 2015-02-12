/*
 *  This file is auto generated by rexcc compiler from the RPA/Tk project
 */

/*
 * To generate the rexjson.c file from rexjson.rexcc do:
 * # rexcc rexjson.rexcc -o rexjson.c
 * 
 * To build the test program:
 * # gcc -o testrexjson rexjson.c -DREXJSON_TEST_MAIN
 *
 * To use the library in your own project, just add these 3 files to your project:
 * rexjson.c   (generated from rexjson.rexcc)
 * rexjson.h
 * rexdfatypes.h
 */

#include <string.h>
#include <stdio.h>
#include "rexdfatypes.h"
#include "rexjson.h"

#define TOKEN_SELF 256
#define TOKEN_SPACE 257

#define TOKEN_STRING 261
#define TOKEN_INT 262
#define TOKEN_NUMBER 263
#define TOKEN_TRUE	264
#define TOKEN_FALSE 266
#define TOKEN_NULL 267
#define TOKEN_COMMA 268
#define TOKEN_COLON 269
#define TOKEN_LEFTSB 270
#define TOKEN_RIGHTSB 271
#define TOKEN_LEFTCB 272
#define TOKEN_RIGHTCB 273


static rexdfss_t accsubstates[] = {
	{                2,               71, (rexuserdata_t)(TOKEN_SPACE) },
	{                2,               58, (rexuserdata_t)(TOKEN_COMMA) },
	{                2,                9, (rexuserdata_t)(TOKEN_INT) },
	{                2,               28, (rexuserdata_t)(TOKEN_NUMBER) },
	{                2,                9, (rexuserdata_t)(TOKEN_INT) },
	{                2,               28, (rexuserdata_t)(TOKEN_NUMBER) },
	{                2,               60, (rexuserdata_t)(TOKEN_COLON) },
	{                2,               62, (rexuserdata_t)(TOKEN_LEFTSB) },
	{                2,               64, (rexuserdata_t)(TOKEN_RIGHTSB) },
	{                2,               66, (rexuserdata_t)(TOKEN_LEFTCB) },
	{                2,               68, (rexuserdata_t)(TOKEN_RIGHTCB) },
	{                2,               40, (rexuserdata_t)(TOKEN_STRING) },
	{                2,                9, (rexuserdata_t)(TOKEN_INT) },
	{                2,               28, (rexuserdata_t)(TOKEN_NUMBER) },
	{                2,               28, (rexuserdata_t)(TOKEN_NUMBER) },
	{                2,               28, (rexuserdata_t)(TOKEN_NUMBER) },
	{                2,               56, (rexuserdata_t)(TOKEN_NULL) },
	{                2,               45, (rexuserdata_t)(TOKEN_TRUE) },
	{                2,               51, (rexuserdata_t)(TOKEN_FALSE) },
	{                0,                0,                0 },
};


static rexdfss_t substates[] = {
	{                0,                0,                0 },
};


static rexdft_t transitions[] = {
	{                0,       4294967295,                0 },
	{                0,                8,                0 },
	{                9,               10,                2 },
	{               11,               12,                0 },
	{               13,               13,                2 },
	{               14,               31,                0 },
	{               32,               32,                2 },
	{               33,               33,                0 },
	{               34,               34,                3 },
	{               35,               43,                0 },
	{               44,               44,                4 },
	{               45,               45,                5 },
	{               46,               47,                0 },
	{               48,               48,                6 },
	{               49,               57,                7 },
	{               58,               58,                8 },
	{               59,               90,                0 },
	{               91,               91,                9 },
	{               92,               92,                0 },
	{               93,               93,               10 },
	{               94,              101,                0 },
	{              102,              102,               11 },
	{              103,              109,                0 },
	{              110,              110,               12 },
	{              111,              115,                0 },
	{              116,              116,               13 },
	{              117,              122,                0 },
	{              123,              123,               14 },
	{              124,              124,                0 },
	{              125,              125,               15 },
	{              126,       4294967295,                0 },
	{                0,                8,                0 },
	{                9,               10,                2 },
	{               11,               12,                0 },
	{               13,               13,                2 },
	{               14,               31,                0 },
	{               32,               32,                2 },
	{               33,       4294967295,                0 },
	{                0,               33,                3 },
	{               34,               34,               16 },
	{               35,               91,                3 },
	{               92,               92,               17 },
	{               93,       4294967295,                3 },
	{                0,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               48,                6 },
	{               49,               57,                7 },
	{               58,       4294967295,                0 },
	{                0,               44,                0 },
	{               45,               45,               18 },
	{               46,               46,               19 },
	{               47,               68,                0 },
	{               69,               69,               20 },
	{               70,              100,                0 },
	{              101,              101,               20 },
	{              102,       4294967295,                0 },
	{                0,               44,                0 },
	{               45,               45,               18 },
	{               46,               46,               19 },
	{               47,               47,                0 },
	{               48,               57,               21 },
	{               58,               68,                0 },
	{               69,               69,               20 },
	{               70,              100,                0 },
	{              101,              101,               20 },
	{              102,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,               96,                0 },
	{               97,               97,               22 },
	{               98,       4294967295,                0 },
	{                0,              116,                0 },
	{              117,              117,               23 },
	{              118,       4294967295,                0 },
	{                0,              113,                0 },
	{              114,              114,               24 },
	{              115,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,               33,                0 },
	{               34,               34,                3 },
	{               35,               91,                0 },
	{               92,               92,                3 },
	{               93,               97,                0 },
	{               98,               98,                3 },
	{               99,              101,                0 },
	{              102,              102,                3 },
	{              103,              109,                0 },
	{              110,              110,                3 },
	{              111,              113,                0 },
	{              114,              114,                3 },
	{              115,              115,                0 },
	{              116,              116,                3 },
	{              117,              117,               25 },
	{              118,       4294967295,                0 },
	{                0,               68,                0 },
	{               69,               69,               20 },
	{               70,              100,                0 },
	{              101,              101,               20 },
	{              102,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               57,               26 },
	{               58,       4294967295,                0 },
	{                0,               42,                0 },
	{               43,               43,               27 },
	{               44,               44,                0 },
	{               45,               45,               27 },
	{               46,               47,                0 },
	{               48,               57,               28 },
	{               58,       4294967295,                0 },
	{                0,               44,                0 },
	{               45,               45,               18 },
	{               46,               46,               19 },
	{               47,               47,                0 },
	{               48,               57,               21 },
	{               58,               68,                0 },
	{               69,               69,               20 },
	{               70,              100,                0 },
	{              101,              101,               20 },
	{              102,       4294967295,                0 },
	{                0,              107,                0 },
	{              108,              108,               29 },
	{              109,       4294967295,                0 },
	{                0,              107,                0 },
	{              108,              108,               30 },
	{              109,       4294967295,                0 },
	{                0,              116,                0 },
	{              117,              117,               31 },
	{              118,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               57,               32 },
	{               58,               64,                0 },
	{               65,               70,               32 },
	{               71,               96,                0 },
	{               97,              102,               32 },
	{              103,       4294967295,                0 },
	{                0,               44,                0 },
	{               45,               45,               18 },
	{               46,               47,                0 },
	{               48,               57,               26 },
	{               58,               68,                0 },
	{               69,               69,               20 },
	{               70,              100,                0 },
	{              101,              101,               20 },
	{              102,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               57,               28 },
	{               58,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               57,               28 },
	{               58,       4294967295,                0 },
	{                0,              114,                0 },
	{              115,              115,               33 },
	{              116,       4294967295,                0 },
	{                0,              107,                0 },
	{              108,              108,               34 },
	{              109,       4294967295,                0 },
	{                0,              100,                0 },
	{              101,              101,               35 },
	{              102,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               57,               36 },
	{               58,               64,                0 },
	{               65,               70,               36 },
	{               71,               96,                0 },
	{               97,              102,               36 },
	{              103,       4294967295,                0 },
	{                0,              100,                0 },
	{              101,              101,               37 },
	{              102,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               57,               38 },
	{               58,               64,                0 },
	{               65,               70,               38 },
	{               71,               96,                0 },
	{               97,              102,               38 },
	{              103,       4294967295,                0 },
	{                0,       4294967295,                0 },
	{                0,               47,                0 },
	{               48,               57,                3 },
	{               58,               64,                0 },
	{               65,               70,                3 },
	{               71,               96,                0 },
	{               97,              102,                3 },
	{              103,       4294967295,                0 },
	{                0,                0,                0 },
};


static rexdfs_t states[] = {
	{                3,                0,                1,                0,                0,                0 ,                0},
	{                1,                1,               30,                0,                0,                0 ,                0},
	{                2,               31,                7,                0,                1,                0 ,                0},
	{                0,               38,                5,                1,                0,                0 ,                0},
	{                2,               43,                1,                1,                1,                0 ,                0},
	{                0,               44,                4,                2,                0,                0 ,                0},
	{                2,               48,                8,                2,                2,                0 ,                0},
	{                2,               56,               10,                4,                2,                0 ,                0},
	{                2,               66,                1,                6,                1,                0 ,                0},
	{                2,               67,                1,                7,                1,                0 ,                0},
	{                2,               68,                1,                8,                1,                0 ,                0},
	{                0,               69,                3,                9,                0,                0 ,                0},
	{                0,               72,                3,                9,                0,                0 ,                0},
	{                0,               75,                3,                9,                0,                0 ,                0},
	{                2,               78,                1,                9,                1,                0 ,                0},
	{                2,               79,                1,               10,                1,                0 ,                0},
	{                2,               80,                1,               11,                1,                0 ,                0},
	{                0,               81,               16,               12,                0,                0 ,                0},
	{                0,               97,                5,               12,                0,                0 ,                0},
	{                0,              102,                3,               12,                0,                0 ,                0},
	{                0,              105,                7,               12,                0,                0 ,                0},
	{                2,              112,               10,               12,                2,                0 ,                0},
	{                0,              122,                3,               14,                0,                0 ,                0},
	{                0,              125,                3,               14,                0,                0 ,                0},
	{                0,              128,                3,               14,                0,                0 ,                0},
	{                0,              131,                7,               14,                0,                0 ,                0},
	{                2,              138,                9,               14,                1,                0 ,                0},
	{                0,              147,                3,               15,                0,                0 ,                0},
	{                2,              150,                3,               15,                1,                0 ,                0},
	{                0,              153,                3,               16,                0,                0 ,                0},
	{                0,              156,                3,               16,                0,                0 ,                0},
	{                0,              159,                3,               16,                0,                0 ,                0},
	{                0,              162,                7,               16,                0,                0 ,                0},
	{                0,              169,                3,               16,                0,                0 ,                0},
	{                2,              172,                1,               16,                1,                0 ,                0},
	{                2,              173,                1,               17,                1,                0 ,                0},
	{                0,              174,                7,               18,                0,                0 ,                0},
	{                2,              181,                1,               18,                1,                0 ,                0},
	{                0,              182,                7,               19,                0,                0 ,                0},
	{                0,                0,                0,                0,                0,                0 ,                0},
};


static rexdfa_t ccdfa = {
	39,
	states,
	189,
	transitions,
	19,
	accsubstates,
	0,
	substates,
	0,
	0,
	0,
	0,
	{0, },
};


rexdfa_t *dfa = &ccdfa;

static ssize_t rexjson_parse_value(rexjson_t* ctx);
static ssize_t rexjson_parse_value_set_name(rexjson_t* ctx, size_t nameoffset, size_t namesize);


static rexjson_record_t *rexjson_record_add(rexjson_t* ctx, rexjson_recordtype_t rectype, rexjson_valuetype_t valtype)
{
	if (ctx->top >= ctx->stacksize) {
		ctx->error = REXJSON_E_NOMEM;
		return NULL;
	}
	memset(&ctx->stack[ctx->top], 0, sizeof(rexjson_record_t));
	ctx->stack[ctx->top].rectype = rectype;
	ctx->stack[ctx->top].valtype = valtype;
	ctx->top++;
	return &ctx->stack[ctx->top - 1];
}

static rexjson_record_t *rexjson_record_current(rexjson_t* ctx)
{
	if (ctx->top <= 0)
		return NULL;
	return &ctx->stack[ctx->top - 1];
}

static void rexjson_get_token(rexjson_t *ctx)
{
	rexdfss_t *acc_ss = NULL;
	rexuint_t nstate = REX_DFA_STARTSTATE;
	int ch, i;
	const char *buffer = &ctx->buffer[ctx->offset];
	int size = ctx->bufsize - ctx->offset;

	ctx->token_str = buffer;
	ctx->token_size = 0;
	ctx->token_id = -1;
	for (i = 0; i < size; i++) {
		ch = buffer[i];
		REX_DFA_NEXT(dfa, nstate, ch, &nstate);
		if (nstate == REX_DFA_DEADSTATE) {
			break;
		}
		if (REX_DFA_STATE(dfa, nstate)->type == REX_STATETYPE_ACCEPT) {
			/*
			 * Note: We will not break out of the loop here. We will keep going
			 * in order to find the longest match.
			 */
			acc_ss = REX_DFA_ACCSUBSTATE(dfa, nstate, 0);
			ctx->token_size = i + 1;
			ctx->token_id = (int) acc_ss->userdata;
		}
	}
	if (ctx->token_size > 0) {
		ctx->token_offset = ctx->offset;
		ctx->offset += ctx->token_size;
	}
}

static void rexjson_next_token(rexjson_t *ctx)
{
	rexjson_get_token(ctx);
	while (ctx->token_id == TOKEN_SPACE)
		rexjson_get_token(ctx);
}

static ssize_t rexjson_error_unexpectedchar(rexjson_t* ctx)
{
	ctx->error_offset = ctx->token_offset;
	ctx->error = REXJSON_E_UNEXPECTEDCHAR;
#ifdef REXJSON_PRINT_UNEXPECTEDCHAR
	fprintf(stdout, "Unexpected: '%.*s' at %d\n", (int)ctx->token_size, ctx->token_str, (int)(ctx->error_offset));
#endif
	return -1;
}

static ssize_t rexjson_parse_token(rexjson_t* ctx, int token)
{
	size_t token_size = ctx->token_size;
	if (ctx->token_id != token) {
		return rexjson_error_unexpectedchar(ctx);
	}
	rexjson_next_token(ctx);
	return token_size;
}

static ssize_t rexjson_parse_name(rexjson_t* ctx)
{
	size_t cur_offset = ctx->token_offset;

	if (rexjson_parse_token(ctx, TOKEN_STRING) < 0) {
		return -1;
	}
	return (ctx->token_offset - cur_offset);
}

static ssize_t rexjson_parse_namevalue(rexjson_t* ctx)
{
	size_t cur_offset = ctx->token_offset;
	size_t name_offset = 0, name_size = 0;

	name_offset = ctx->token_offset;
	name_size = ctx->token_size;
	if (rexjson_parse_name(ctx) < 0)
		return -1;
	if (rexjson_parse_token(ctx, TOKEN_COLON) < 0)
		return -1;
	if (rexjson_parse_value_set_name(ctx, name_offset, name_size) < 0)
		return -1;
	return (ctx->token_offset - cur_offset);
}


static ssize_t rexjson_parse_object(rexjson_t* ctx)
{
	size_t cur_offset = ctx->token_offset;
	rexjson_record_t *record = rexjson_record_current(ctx);

	if (rexjson_parse_token(ctx, TOKEN_LEFTCB) < 0)
		return -1;
	if (rexjson_parse_namevalue(ctx) < 0)
		return -1;
	while (ctx->token_id == TOKEN_COMMA) {
		if (rexjson_parse_token(ctx, TOKEN_COMMA) < 0)
			return -1;
		if (rexjson_parse_namevalue(ctx) < 0)
			return -1;
	}
	if (rexjson_parse_token(ctx, TOKEN_RIGHTCB) < 0)
		return -1;
	record->value = cur_offset;
	record->valuesize = ctx->token_offset - cur_offset;
	record->valtype = REXJSON_VALUE_OBJECT;
	return (ctx->token_offset - cur_offset);
}

static ssize_t rexjson_parse_array(rexjson_t* ctx)
{
	size_t cur_offset = ctx->token_offset;
	rexjson_record_t *record = rexjson_record_current(ctx);

	if (rexjson_parse_token(ctx, TOKEN_LEFTSB) < 0)
		return -1;
	if (rexjson_parse_value(ctx) < 0)
		return -1;
	while (ctx->token_id == TOKEN_COMMA) {
		if (rexjson_parse_token(ctx, TOKEN_COMMA) < 0)
			return -1;
		if (rexjson_parse_value(ctx) < 0)
			return -1;
	}
	if (rexjson_parse_token(ctx, TOKEN_RIGHTSB) < 0)
		return -1;
	record->value = cur_offset;
	record->valuesize = ctx->token_offset - cur_offset;
	record->valtype = REXJSON_VALUE_ARRAY;
	return (ctx->token_offset - cur_offset);
}


static ssize_t rexjson_parse_primitive(rexjson_t* ctx)
{
	rexjson_record_t *rec = rexjson_record_current(ctx);
	size_t ret = ctx->token_size;
	switch (ctx->token_id) {
	case TOKEN_STRING:
		rec->valtype = REXJSON_VALUE_STRING;
		break;
	case TOKEN_INT:
		rec->valtype = REXJSON_VALUE_INT;
		break;
	case TOKEN_NUMBER:
		rec->valtype = REXJSON_VALUE_NUMBER;
		break;
	case TOKEN_NULL:
		rec->valtype = REXJSON_VALUE_NULL;
		break;
	case TOKEN_TRUE:
		rec->valtype = REXJSON_VALUE_TRUE;
		break;
	case TOKEN_FALSE:
		rec->valtype = REXJSON_VALUE_FALSE;
		break;
	default:
		return rexjson_error_unexpectedchar(ctx);
	}
	rec->value = ctx->token_offset;
	rec->valuesize = ctx->token_size;
	rexjson_next_token(ctx);
	return ret;
}

static ssize_t rexjson_parse_value(rexjson_t* ctx)
{
	return rexjson_parse_value_set_name(ctx, 0, 0);
}

static ssize_t rexjson_parse_value_set_name(rexjson_t* ctx, size_t nameoffset, size_t namesize)
{
	ssize_t ret = -1;
	rexjson_record_t *end, *begin;

	if (!ctx->levels) {
		ctx->error_offset = ctx->token_offset;
		ctx->error = REXJSON_E_MAXRECURSIONS;
		return -1;
	}
	ctx->levels--;
	switch (ctx->token_id) {
	case TOKEN_LEFTCB:
		if ((begin = rexjson_record_add(ctx, REXJSON_RECORD_BEGIN, REXJSON_VALUE_OBJECT)) == NULL)
			return -1;
		ret = rexjson_parse_object(ctx);
		break;
	case TOKEN_LEFTSB:
		if ((begin = rexjson_record_add(ctx, REXJSON_RECORD_BEGIN, REXJSON_VALUE_ARRAY)) == NULL)
			return -1;
		ret = rexjson_parse_array(ctx);
		break;
	default:
		if ((begin = rexjson_record_add(ctx, REXJSON_RECORD_BEGIN, REXJSON_VALUE_NULL)) == NULL)
			return -1;
		ret = rexjson_parse_primitive(ctx);
	}
	begin->name = nameoffset;
	begin->namesize = namesize;
	if ((end = rexjson_record_add(ctx, REXJSON_RECORD_END, REXJSON_VALUE_NULL)) == NULL)
		return -1;
	*end = *begin;
	end->rectype = REXJSON_RECORD_END;
	ctx->levels++;
	return ret;
}

void rexjson_init(rexjson_t *ctx, rexjson_record_t* recs, size_t recsize, const char* buffer, size_t bufsize, size_t maxlevels)
{
	memset(ctx, 0, sizeof(*ctx));
	ctx->buffer = buffer;
	ctx->bufsize = bufsize;
	ctx->stack = recs;
	ctx->stacksize = recsize;
	ctx->levels = maxlevels;
}

int rexjson_get_error(rexjson_t *ctx)
{
	return ctx->error;
}

size_t rexjson_get_error_offset(rexjson_t *ctx)
{
	return ctx->error_offset;
}

static void rexjson_record_dump(FILE* file, rexjson_record_t* record, int indent, const char *buffer)
{
	int i;

	for (i = 0; i < indent; i++)
		fprintf(file, "    ");
	if (record->rectype == REXJSON_RECORD_BEGIN) {
		fprintf(file, "%7d [BEGIN] ", (int)record->valuesize);
	} else {
		fprintf(file, "%7d [End  ] ", (int)record->valuesize);
	}
	if (record->namesize) {
		fprintf(file, "(NAME : %.*s) ", (int)record->namesize, &buffer[record->name]);
	}
	switch (record->valtype) {
	case REXJSON_VALUE_NULL:
		fprintf(file, "NULL    : %.*s\n", (int)record->valuesize, &buffer[record->value]);
		break;
	case REXJSON_VALUE_TRUE:
		fprintf(file, "TRUE    : %.*s\n", (int)record->valuesize, &buffer[record->value]);
		break;
	case REXJSON_VALUE_FALSE:
		fprintf(file, "FALSE   : %.*s\n", (int)record->valuesize, &buffer[record->value]);
		break;
	case REXJSON_VALUE_INT:
		fprintf(file, "INT     : %.*s\n", (int)record->valuesize, &buffer[record->value]);
		break;
	case REXJSON_VALUE_NUMBER:
		fprintf(file, "NUMBER  : %.*s\n", (int)record->valuesize, &buffer[record->value]);
		break;
	case REXJSON_VALUE_STRING:
		fprintf(file, "STRING  : %.*s\n", (int)record->valuesize, &buffer[record->value]);
		break;
	case REXJSON_VALUE_ARRAY:
		fprintf(file, "ARRAY   :\n");
		break;
	case REXJSON_VALUE_OBJECT:
		fprintf(file, "OBJECT  :\n");
		break;
	}
}

void rexjson_dump_records(FILE *file, rexjson_record_t* recs, size_t recsize, const char* buffer, size_t bufsize)
{
	int i = 0, indent = 0;

	while (i < recsize && recs[i].rectype) {
		if (recs[i].rectype == REXJSON_RECORD_BEGIN) {
			rexjson_record_dump(file, &recs[i], indent, buffer);
			indent++;
		} else {
			indent--;
			rexjson_record_dump(file, &recs[i], indent, buffer);
		}
		i++;
	}
}

ssize_t rexjson_parse_buffer(rexjson_t *ctx, rexjson_record_t* recs, size_t recsize, const char* buffer, size_t bufsize, size_t maxlevels)
{
	rexjson_init(ctx, recs, recsize, buffer, bufsize, maxlevels);
	rexjson_next_token(ctx);
	return rexjson_parse_value(ctx);
}

static ssize_t rexjson_recordtree_end(rexjson_record_t* recs, size_t recsize, ssize_t rec_index)
{
	size_t s = 0;
	rexjson_record_t* rec;

	if (rec_index < 0 || rec_index >= recsize || recs[rec_index].rectype != REXJSON_RECORD_BEGIN)
		return -1;
	rec = &recs[rec_index];
	for (s = 0; rec_index < recsize && recs[rec_index].rectype != REXJSON_RECORD_NONE; rec_index++) {
		rec = &recs[rec_index];
		if (rec->rectype == REXJSON_RECORD_BEGIN)
			++s;
		if (rec->rectype == REXJSON_RECORD_END)
			--s;
		if (s == 0)
			return rec_index;
	}
	return -1;
}

ssize_t rexjson_recordtree_firstchild(rexjson_record_t* recs, size_t recsize, ssize_t rec_index)
{
	if (rec_index < 0 || rec_index + 1 >= recsize || recs[rec_index].rectype != REXJSON_RECORD_BEGIN)
		return -1;
	if (recs[rec_index + 1].rectype == REXJSON_RECORD_BEGIN)
		return rec_index + 1;
	return -1;
}

ssize_t rexjson_recordtree_next(rexjson_record_t* recs, size_t recsize, ssize_t rec_index)
{
	ssize_t end_index = rexjson_recordtree_end(recs, recsize, rec_index);

	if (end_index < 0)
		return -1;
	if (end_index + 1 < recsize && recs[end_index + 1].rectype == REXJSON_RECORD_BEGIN)
		return end_index + 1;
	return -1;
}

void rexjson_dump_tree(FILE *file, rexjson_record_t* recs, size_t recsize, size_t record, const char* buffer, int indent)
{
	ssize_t child;
	rexjson_record_dump(file, &recs[record], indent, buffer);
	if ((child = rexjson_recordtree_firstchild(recs, recsize, record)) < 0)
		return;
	rexjson_dump_tree(file, recs, recsize, child, buffer, indent + 1);
	while ((child = rexjson_recordtree_next(recs, recsize, child)) >= 0) {
		rexjson_dump_tree(file, recs, recsize, child, buffer, indent + 1);
	}
}

#ifdef REXJSON_TEST_MAIN 
int main(int argc, const char *argv[])
{
	rexjson_t ctx;
	rexjson_record_t values[200];

	char text1[]="{\n\"name\": \"Jack (\\\"Bee\\\") Nimble\", \n\"format\": {\"type\":       \"rect\", \n\"width\":      1920, \n\"height\":     1080, \n\"interlace\":  false,\"frame rate\": 24\n}\n}}";
	char text2[]="[\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"]";
	char text3[]="[\n    [0, -1, 0],\n    [1, 0, 0],\n    [0, 0, 1]\n	]\n";
	char text4[]="{\n		\"Image\": {\n			\"Width\":  800,\n			\"Height\": 600,\n			\"Title\":  \"View from 15th Floor\",\n		\"Thumbnail\": {\n				\"Url\":    \"http:/*www.example.com/image/481989943\",\n				\"Height\": 125,\n				\"Width\":  \"100\"\n			},\n			\"IDs\": [116, 943, 234, 38793]\n		}\n	}";
	char text5[]="[\n	 {\n	 \"precision\": \"zip\",\n	 \"Latitude\":  37.7668,\n	 \"Longitude\": -122.3959,\n	 \"Address\":   \"\",\n	 \"City\":      \"SAN FRANCISCO\",\n	 \"State\":     \"CA\",\n	 \"Zip\":       \"94107\",\n	 \"Country\":   \"US\"\n	 },\n	 {\n	 \"precision\": \"zip\",\n	 \"Latitude\":  37.371991,\n	 \"Longitude\": -122.026020,\n	 \"Address\":   \"\",\n	 \"City\":      \"SUNNYVALE\",\n	 \"State\":     \"CA\",\n	 \"Zip\":       \"94085\",\n	 \"Country\":   \"US\"\n	 }\n	 ]";

	if (rexjson_parse_buffer(&ctx, values, sizeof(values)/sizeof(values[0]), text1, sizeof(text1), 10) > 0) {
		rexjson_dump_tree(stdout, values, sizeof(values)/sizeof(values[0]), 0, text1, 0);
		fprintf(stdout, "\n");
	}
	if (rexjson_parse_buffer(&ctx, values, sizeof(values)/sizeof(values[0]), text2, sizeof(text2), 10) > 0) {
		rexjson_dump_tree(stdout, values, sizeof(values)/sizeof(values[0]), 0, text2, 0);
		fprintf(stdout, "\n");
	}
	if (rexjson_parse_buffer(&ctx, values, sizeof(values)/sizeof(values[0]), text3, sizeof(text3), 10) > 0) {
		rexjson_dump_tree(stdout, values, sizeof(values)/sizeof(values[0]), 0, text3, 0);
		fprintf(stdout, "\n");
	}
	if (rexjson_parse_buffer(&ctx, values, sizeof(values)/sizeof(values[0]), text4, sizeof(text4), 10) > 0) {
		rexjson_dump_tree(stdout, values, sizeof(values)/sizeof(values[0]), 0, text4, 0);
		fprintf(stdout, "\n");
	}
	if (rexjson_parse_buffer(&ctx, values, sizeof(values)/sizeof(values[0]), text5, sizeof(text5), 10) > 0) {
		rexjson_dump_tree(stdout, values, sizeof(values)/sizeof(values[0]), 0, text5, 0);
		fprintf(stdout, "\n");
	}
	return 0;
}
#endif
