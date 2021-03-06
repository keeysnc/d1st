<?php

// =============================================================================
// CORNERSTONE/INCLUDES/ELEMENTS/DEFINITIONS/TEXT.PHP
// -----------------------------------------------------------------------------
// V2 element definitions.
// =============================================================================

// =============================================================================
// TABLE OF CONTENTS
// -----------------------------------------------------------------------------
//   01. Define Element
//   02. Builder Setup
//   03. Register Element
// =============================================================================

// Define Element
// =============================================================================

$data = array(
  'title'  => __( 'Text', '__x__' ),
  'values' => array_merge(
    x_values_text( array( 'type' => 'standard' ) ),
    x_values_omega()
  ),
);



// Builder Setup
// =============================================================================

function x_element_builder_setup_text() {
  return array(
    'control_groups' => array_merge(
      x_control_groups_text( array( 'type' => 'standard' ) ),
      x_control_groups_omega()
    ),
    'controls' => array_merge(
      x_controls_text( array( 'type' => 'standard' ) ),
      x_controls_omega()
    ),
  );
}



// Register Module
// =============================================================================

cornerstone_register_element( 'text', x_element_base( $data ) );
